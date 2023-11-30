import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:metal_marketplace/global_component/Navigation_Menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  TextEditingController? cUsername;
  TextEditingController? cPass;
  TextEditingController? cName;
  TextEditingController? cEmail;
  RxBool passwordObscure = true.obs;
  RxBool isLoading = false.obs;
  RxBool isSuccess = false.obs;
  RxBool isGoogleSignIn = false.obs;
  RxBool isUsernameGoogleSignIn = false.obs;
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initializePrefs();
    cUsername = new TextEditingController();
    cPass = new TextEditingController();
    cName = new TextEditingController();
    cEmail = new TextEditingController();
  }

  void initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void togglePasswordVisibility() {
    passwordObscure.value = !passwordObscure.value;
  }

  void Register() async {
    final baseUrl = 'https://mediadwi.com/api/latihan/register-user';
    isLoading.value = true;
    final response = await http.post(Uri.parse(baseUrl), body: {
      "username": cUsername?.text,
      "password": cPass?.text,
      "full_name": cName?.text,
      "email": cEmail?.text,
    });
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> getData = jsonDecode(response.body);
        final status = getData["status"];

        if (status == true) {
          final message = getData["message"];
          print("Token : $message");
          Get.offAllNamed('/homepage');
          isSuccess.value = true;
          Get.snackbar(
            "Success",
            "$message",
            duration: Duration(seconds: 3),
          );
        } else if (status == false) {
          isLoading.value = false;
          final message = getData["message"];
          print("message : $message");
          Get.snackbar(
            "Gagal Login",
            "$message",
            duration: Duration(seconds: 3),
          );
        }
      } catch (e) {
        print("Error parsing response: $e");
      }
    } else {
      print("HTTP request failed with status code: ${response.statusCode}");
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      isGoogleSignIn.value = true;
      isUsernameGoogleSignIn.value = true;
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      Get.offAll(NavigationMenu());
      isGoogleSignIn.value = false;
    } catch (e) {
      isGoogleSignIn.value = false;
      isUsernameGoogleSignIn.value = false;
      print('Google Sign-In error: $e');
      Get.snackbar("Error", "Google Sign-In error: $e");
      isGoogleSignIn.value = true;
    }
  }
}
