import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/helper/themes.dart';

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

Widget mySearchProduct(BuildContext context, IconData icon, String hint, TextEditingController? controller, Function(String) onSearch) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  return TextField(
    textDirection: TextDirection.ltr,
    controller: controller,
    onChanged: onSearch,
    cursorColor: primaryTextColor,
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.grey,
      ),
      hintText: hint,
      filled: true, // Add this line to enable filling the background
      fillColor: greyWhite,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18.0), // Set the border radius
        borderSide: BorderSide.none, // Remove the border
      ),
    ),
    style: GoogleFonts.poppins(
      color: primaryTextColor,
    ),
  );
}
