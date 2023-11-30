import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:metal_marketplace/global_component/Navigation_Menu.dart';
import 'package:metal_marketplace/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  late final SharedPreferences prefs;
  TextEditingController? cUsername;
  TextEditingController? cPass;
  RxBool passwordObscure = true.obs;
  RxBool isLoading = false.obs;
  RxBool isSuccess = false.obs;
  RxBool isGoogleSignIn = false.obs;  
  RxBool isUsernameGoogleSignIn = false.obs; 

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initializePrefs();
    cUsername = new TextEditingController();
    cPass = new TextEditingController();
  }

  void initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void togglePasswordVisibility() {
    passwordObscure.value = !passwordObscure.value;
  }

  void Login() async {
    final baseUrl = 'https://mediadwi.com/api/latihan/login';
    isLoading.value = true;
    final response = await http.post(
      Uri.parse(baseUrl),
      body: {
        "username": cUsername?.text,
        "password": cPass?.text,
      },
    );

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> getData = jsonDecode(response.body);
        final status = getData["status"];

        if (status == true) {
          isLoading.value = true;
          final token = getData["token"];
          final message = getData["message"];
          final password = cPass;
          print("Token : $token");
          await prefs.setString('token', token);
          await prefs.setString('password', password.toString());


          Get.snackbar(
            "Success",
            "$message",
          );
          Get.offAllNamed('/homepage');
          isLoading.value = false;

        } else if (status == false) {
          isLoading.value = true;
          final message = getData["message"];
          print("message : $message");
          Get.snackbar(
            "Failed",
            "$message",
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
