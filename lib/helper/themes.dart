import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color.fromRGBO(123, 46, 66, 1);
const Color secondaryColor = Color.fromRGBO(255, 255, 255, 1);
const Color primaryTextColor = Colors.black;
const Color greyFix = Color(0xFF9FADBC);
const Color greyWhite = Color(0xFFEFEFEF);
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

TextStyle titletext = GoogleFonts.roboto(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.bold,
        fontSize: figmaFontsize(24)));

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

TextStyle commonRoboto = GoogleFonts.roboto(
    textStyle: TextStyle(
        color: greyFix,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(15)));

TextStyle buttonRoboto = GoogleFonts.roboto(
    textStyle: TextStyle(
  fontSize: figmaFontsize(16),
  fontWeight: FontWeight.w600,
  color: Color(0xFF1D3A70),
));


//IMAGE ASSETS
String google = "assets/images/logo/google.png";
String facebook = "assets/images/logo/facebook.png";
String setting = "assets/images/icon/setting.png";
String lock = "assets/images/icon/lock.png";
String logout = "assets/images/icon/logout.png";
String semar = "assets/images/logo/semar.jpeg";
String logo = "assets/images/logo/semarnusantara.png";
String promote1 = "assets/images/promotion/promote1.jpg";
String promote2 = "assets/images/promotion/promote2.jpg";
String promote3 = "assets/images/promotion/promote3.jpg";
String promote4 = "assets/images/promotion/promote4.jpg";
String ball = "assets/images/collection/ballcollection.jpeg";
String setball = "assets/images/collection/ballsetcollection.jpeg";
String caribea = "assets/images/collection/caribeacollection.png";
String nikita = "assets/images/collection/nikitawillycollection.jpeg";
String solitaire = "assets/images/collection/solitairecollection.jpeg";
String gelangemasbolamrican =
    "assets/images/categories/item/gelang/Gelang_Emas_Bola_Mrican_3_Warna_10K_Semar_Nusantara.jpeg";
String gelangemasfancylove =
    "assets/images/categories/item/gelang/Gelang_Emas_Fancy_Love_My_Letter_Bulat_Gold_10K_Semar_Nusantara.jpeg";
String gelangemashollowniki =
    "assets/images/categories/item/gelang/Gelang_Emas_Hollow_Niki_Chain_Gold_10K_Semar_Nusantara.jpeg";
String gelangemasjedar =
    "assets/images/categories/item/gelang/Gelang_Emas_Jedar_Love_Gold_Double_Layer_10K_Semar_Nusantara.jpeg";
String gelangemasthesya =
    "assets/images/categories/item/gelang/Gelang_Emas_Thesya_Butterfly_Hope_Gold_10K_Semar_Nusantara.jpeg";
String gelangserut =
    "assets/images/categories/item/gelang/Gelang_Serut_Emas_Mini_Aurel_Gold_10K_Semar_Nusantara.jpeg";
String kalungemascassano =
    "assets/images/categories/item/kalung/Kalung_Emas_Cassano_Farasha_Butterfly_Gold_10K_Semar_Nusantara.jpeg";
String kalungemasgliter =
    "assets/images/categories/item/kalung/Kalung_Emas_Gliter Bola_Satin_Rose_White_Gold_10K_Semar_usantara.jpeg";
String kalungemasrhinestone =
    "assets/images/categories/item/kalung/Kalung_Emas_Round_Rhinestone_Gold_10K_Semar_Nusantara.jpeg";
String kalungemasstela =
    "assets/images/categories/item/kalung/Kalung_Emas_Stela_Variasi_Bola_Gliter_Gold_10K_Semar_Nusantara.jpeg";
String kalungemasdaun =
    "assets/images/categories/item/kalung/Kalung_Emas_Variasi_Daun_Gold_10K_Semar_Nusantara.jpeg";
String kalungemasveeline =
    "assets/images/categories/item/kalung/Kalung_Emas_Veeline_Gold_10K_Semar_Nusantara.jpeg ";
String iKalung = "assets/images/icon/1.png";
String iGelang = "assets/images/icon/3.png";
String iAnting = "assets/images/icon/5.png";
String iLiontin = "assets/images/icon/2.png";
String iCincin = "assets/images/icon/4.png";
