import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:metal_marketplace/pages/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/route_name.dart';

class RegisterController extends GetxController {
  TextEditingController? cUsername;
  TextEditingController? cPass;
  TextEditingController? cName;
  TextEditingController? cEmail;
  RxBool passwordObscure = true.obs;
  RxBool isLoading = false.obs;
  RxBool isSuccess = false.obs;
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
    final response = await http.post(
        Uri.parse(baseUrl),
        body:{
          "username" :  cUsername?.text,
          "password" :  cPass?.text,
          "full_name" :  cName?.text,
          "email" :  cEmail?.text,
        }
    );
    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> getData = jsonDecode(response.body);
        final status = getData["status"];

        if (status == true) {
          final message = getData["message"];
          print("Token : $message");
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
}
