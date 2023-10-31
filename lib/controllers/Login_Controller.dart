import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:metal_marketplace/pages/HomePage.dart';

class LoginController extends GetxController {
  final resultData = RxString("initial");
  TextEditingController? cEmail;
  TextEditingController? cPass;
  late final SharedPreferences prefs;
  RxBool isLoading = false.obs;
  RxBool isSuccess = false.obs;
  final RxString txtUsername = RxString("");
  final RxString txtPassword = RxString("");

  @override
  void onInit() {
    super.onInit();
    cEmail = TextEditingController();
    cPass = TextEditingController();
  }

  loginUser(String email, password) async {
    final baseUrl = 'https://reqres.in/api/login';
    isLoading.value = true;
    final response = await http.post(
      Uri.parse(baseUrl),
      body: {
        'email': cEmail!.text,
        'password': cPass!.text,
      },
    );
    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> getToken = jsonDecode(response.body);
        final token = getToken['token'];
        print('Token : $token');
        Get.snackbar("Selamat", "Login Sukses");
        prefs = await SharedPreferences.getInstance();
        await prefs.setString('username', token.toString());
        Get.off(
              () => HomePage(),
          transition: Transition.fadeIn,
        );
        isSuccess.value = true;
      } else {
        Get.snackbar("Maaf", "Gagal Login");
      }
    } catch (e) {
      print(e);
    }
  }

  void resultRegister(
      String txtUsername,
      String txtPassword,
      ) {
    resultData.value = "Registration Success";
    print("Profile Page " + resultData.value.toString());
  }

  void registrasiProfile(
      String txtUsername,
      String txtPassword,
      ) {
    this.txtUsername.value = txtUsername;
    this.txtPassword.value = txtPassword;
  }
}
