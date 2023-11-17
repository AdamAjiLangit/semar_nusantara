import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color.fromRGBO(123, 46, 66, 1);
const Color secondaryColor = Color.fromRGBO(255, 255, 255, 1);
const Color primaryTextColor = Colors.black;
const Color greyFix = Color(0xFF9FADBC);
const Color lineColor = Color.fromRGBO(232, 232, 232, 100);
const Color offButtonColor = Color.fromRGBO(203, 203, 203, 1);
const Color warningColor = Color.fromRGBO(143, 42, 42, 1);

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

//FONT STYLES INITIAL

TextStyle buttonStyle({required final color}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w900,
          fontSize: figmaFontsize(24)));
}

TextStyle appBarText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: greyFix,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(14)));

TextStyle moneyText = GoogleFonts.elMessiri(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(32)));

TextStyle moneyMiniText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w400,
        fontSize: figmaFontsize(12)));
TextStyle titleText = GoogleFonts.poppins(
  fontSize: 14.0,
  fontWeight: FontWeight.w400,
  color: Color(0xFFFFFFFF),
);

TextStyle headerText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(18)));

TextStyle headerTextblack = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(18)));

TextStyle headerelMessiri = GoogleFonts.elMessiri(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(32)));

TextStyle subheaderText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(16)));
TextStyle textField = TextStyle(color: primaryTextColor);

TextStyle commonText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w400,
        fontSize: figmaFontsize(15)));

TextStyle textField = GoogleFonts.poppins(
    color: primaryTextColor
);

//IMAGE ASSETS
String logo = "assets/images/semarnusantara.png";
String semar = "assets/images/semar.jpeg";
String nikicollection = "assets/images/nikitawillycollection.jpeg";
String ballcollection = "assets/images/ballsetcollection.jpeg";
String caribeacollection = "assets/images/caribeacollection.png";
String solitairecollection = "assets/images/solitairecollection.jpeg";
String positaneoriginal = "assets/images/promote1.jpg";
String soulsister = "assets/images/promote2.jpg";
String extraordinarysister = "assets/images/promote3.jpg";
String love = "assets/images/promote4.jpg";
String ball = "assets/images/ball.jpeg";
