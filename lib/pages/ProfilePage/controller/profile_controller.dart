import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:metal_marketplace/pages/ProfilePage/ProfilePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:metal_marketplace/pages/RegisterPage/controller/register_controller.dart';

import '../../../helper/imagePicker.dart';

class ProfileController extends GetxController {
  final RegisterController registerController = Get.put(RegisterController());
  late final SharedPreferences prefs;
  var selectedImagePath = "".obs;
  RxBool passwordObscure = true.obs;
  RxString ctrUsername = "".obs;
  RxString ctrEmail = "".obs;
  final Rx<Uint8List?> _image = Rx<Uint8List?>(null);

  Uint8List? get image => _image.value;


  @override
  void onInit() {
    super.onInit();

    checkSharedPreference();
  }

  void togglePasswordVisibility() {
    passwordObscure.value = !passwordObscure.value;
  }

  Future<void> selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image.value = await pickedFile.readAsBytes();
    } else {
      Get.snackbar(
        'Error',
        'Tidak ada gambar yang dipilih',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void editProfile(String username, String email) async {
    if (username.isEmpty || email.isEmpty) {
      // Show snackbar if data is empty
      Get.snackbar("Maaf", "Data kosong");
    } else {
      // Update the profile information
      ctrUsername.value = username;
      ctrEmail.value = email;

      await prefs.setString('username', ctrUsername.value);
      await prefs.setString('email', ctrEmail.value);

      // Show success snackbar and navigate to the profile page
      Get.snackbar("Congratulation", "Data berhasil dirubah");
      Get.off(() => ProfilePage());
    }
  }

  void checkSharedPreference() async {
    prefs = await SharedPreferences.getInstance();

    if (prefs != null) {
      ctrUsername.value = prefs.getString('username') ?? '';
      ctrEmail.value = prefs.getString('email') ?? '';
    }
  }

  void logOut() async {
    Get.defaultDialog(
      title: "Logout Confirmation",
      middleText: "Are you sure you want to logout?",
      actions: [
        TextButton(
          onPressed: () {
            // Cancel button pressed, close the dialog
            Get.back();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            // Yes button pressed, log out and navigate to the login page
            await prefs.clear();
            Get.off(() => LoginPage());
          },
          child: Text('Yes'),
        ),
      ],
    );
  }
}