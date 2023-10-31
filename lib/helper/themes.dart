import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Colors.white;
const Color primaryTextColor = Color.fromRGBO(46, 46, 65, 1);
Color secondaryColor = Colors.blue.shade400;
const Color lineColor = Color.fromRGBO(232, 232, 232, 100);
const Color offButtonColor = Color.fromRGBO(203, 203, 203, 1);
const Color warningColor = Color.fromRGBO(143, 42, 42, 1);

figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

//FONT STYLES INITIAL

TextStyle buttonStyle({required final color}) {
  return GoogleFonts.montserrat(
      textStyle: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: figmaFontsize(24)));
}

TextStyle appBarText = GoogleFonts.rubik(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(14)));

TextStyle moneyText = GoogleFonts.rubik(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(18)));

TextStyle moneyMiniText = GoogleFonts.rubik(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w400,
        fontSize: figmaFontsize(12)));

TextStyle headerText = GoogleFonts.rubik(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: figmaFontsize(18)));
TextStyle subheaderText = GoogleFonts.rubik(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(16)));

TextStyle commonText = GoogleFonts.rubik(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w400,
        fontSize: figmaFontsize(15)));

//IMAGE ASSETS
String GoRide = "assets/goRide.png";
String GoCar = "assets/goCar.png";
String GoSend = "assets/goSend.png";
String GoTagihan = "assets/goTagihan.png";
String GoFood = "assets/goFood.png";
String GoShop = "assets/goShop.png";
String GoMart = "assets/goMart.png";
String Lainnya = "assets/lainnya.png";
String mieGacoan = "assets/mieGacoan.jpeg";
String mcDonald = "assets/mcDonald.jpeg";
String starbucks = "assets/starbucks.jpeg";