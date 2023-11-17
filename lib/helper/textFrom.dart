import 'package:flutter/material.dart';
import 'package:metal_marketplace/helper/themes.dart';

// ignore: non_constant_identifier_names
Widget myForm(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    controller: controller,
    obscureText: obscure,
    cursorColor: primaryTextColor,
    style: textField,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(
        color: primaryTextColor,
      ),
      prefixIcon: Icon(icon, color: primaryTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
    ),
  );
}

Widget myPassword(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller, void Function() togglePasswordVisibility,) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    controller: controller,
    obscureText: obscure,
    cursorColor: primaryTextColor,
    style: textField,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(
        color: primaryTextColor,
      ),
      suffixIcon: IconButton(
        icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, color: primaryTextColor),
        onPressed: togglePasswordVisibility,
      ),
      prefixIcon: Icon(icon, color: primaryTextColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * screenHeight * 0.005),
        borderSide: BorderSide(
          color: primaryTextColor,
          width: screenWidth * 0.005,
        ),
      ),
Widget myForm(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextFormField(
    controller: controller,
    cursorColor: primaryColor,
    decoration: InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.white,
      contentPadding:
      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      prefixIcon: Icon(icon, color: greyFix),
      labelStyle: TextStyle(color: greyFix),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    style: textField,
    // Add other properties for your TextFormField
  );
}

Widget myPassword(BuildContext context, IconData icon, String label, bool obscure, TextInputType inputType, TextEditingController? controller, void Function() togglePasswordVisibility,) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    controller: controller,
    obscureText: obscure,
    cursorColor: primaryColor,
    style: textField,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
      labelText: label,
      labelStyle: TextStyle(
        color: greyFix,
      ),
      contentPadding:
      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      suffixIcon: IconButton(
        icon: Icon(obscure ? Icons.visibility_off : Icons.visibility, color: greyFix),
        onPressed: togglePasswordVisibility,
      ),
      prefixIcon: Icon(icon, color: greyFix),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}