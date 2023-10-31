import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class RegistrasiProfileController extends GetxController {
  final resultData = RxString("initial");
  final RxString txtUsername = RxString("");
  final RxString txtEmail = RxString("");
  final RxString txtPassword = RxString("");

  void resultRegister(
      String txtUsername,
      String txtEmail,
      String txtPassword,
      ) {
    resultData.value = "Registration Success";
    print("Profile Page " + resultData.value.toString());
  }

  void registrasiProfile(
      String txtUsername,
      String txtEmail,
      String txtPassword,
      Uint8List? image,
      ) {
      this.txtUsername.value = txtUsername;
      this.txtEmail.value = txtEmail;
      this.txtPassword.value = txtPassword;
  }
}
