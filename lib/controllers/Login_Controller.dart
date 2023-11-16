import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:metal_marketplace/pages/HomePage.dart';

import '../routes/route_name.dart';

class LoginController extends GetxController {
  late final SharedPreferences prefs;
  TextEditingController? cUsername;
  TextEditingController? cPass;
  RxBool passwordObscure = true.obs;
  RxBool isLoading = false.obs;
  RxBool isSuccess = false.obs;

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
      body:{
        "username" :  cUsername?.text,
        "password" :  cPass?.text,
      },
    );

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> getData = jsonDecode(response.body);
        final status = getData["status"];

        if (status == true) {
          final token = getData["token"];
          final message = getData["message"];
          final password = cPass;
          print("Token : $token");
          await prefs.setString('token', token);
          await prefs.setString('password', password.toString());
          Get.off(HomePage());
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
            "Failed",
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
}
