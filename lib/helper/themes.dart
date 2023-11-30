import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color.fromRGBO(123, 46, 66, 1);
const Color secondaryColor = Color.fromRGBO(255, 255, 255, 1);
const Color primaryTextColor = Colors.black;
const Color greyFix = Color(0xFF9FADBC);
const Color greyColor = Color(0xFF777777);
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

TextStyle ts20MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 20
    )
);

TextStyle ts16SemiboldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 16
    )
);

TextStyle ts16SemiboldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 16
    )
);

TextStyle ts14MediumGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyColor,
        fontWeight: FontWeight.w500,
        fontSize: 14
    )
);

TextStyle ts12SemiboldGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyColor,
        fontWeight: FontWeight.w600,
        fontSize: 12
    )
);

TextStyle ts12SemiboldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 12
    )
);

TextStyle ts12MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: 12
    )
);

TextStyle ts20SemiboldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 20
    )
);

TextStyle ts18SemiboldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 18
    )
);

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

TextStyle moneyText = GoogleFonts.poppins(
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

TextStyle headerelMessiri = GoogleFonts.poppins(
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
String paymentsuccess = "assets/images/icon/paymentsuccses.png";
String gelangemasbolamrican =
    "assets/images/categories/item/gelangEmasBolaMrican.png";
String gelangemasfancylove =
    "assets/images/categories/item/gelangEmasFancy.png";
String gelangemashollowniki =
    "assets/images/categories/item/gelangEmasNiki.png";
String gelangemasjedar =
    "assets/images/categories/item/gelangEmasJedar.png";
String gelangserut =
    "assets/images/categories/item/gelangSerutEmasMiniAurelGold10KSemarNusantara.png";
String kalungemascassano =
    "assets/images/categories/item/kalungEmasCassanoFarashaButterflyGold10KSemarNusantara.png";
String kalungemasgliter =
    "assets/images/categories/item/kalungEmasGliterBolaSatinRoseWhiteGold10KSemarusantara.png";
String kalungemasrhinestone =
    "assets/images/categories/item/kalungEmasRoundRhinestoneGold10KSemarNusantara.png";
String kalungemasstela =
    "assets/images/categories/item/kalungEmasStelaVariasiBolaGliterGold10KSemarNusantara.png";
String kalungemasdaun =
    "assets/images/categories/item/kalungEmasVariasiDaunGold10KSemarNusantara.png";
String kalungemasveeline =
    "assets/images/categories/item/kalungEmasVeeline.png";
String antingkorea =
    "assets/images/categories/item/antingEmasKorea.png";
String antinglaluna =
    "assets/images/categories/item/antingEmasLaLuna.png";
String antingleta =
    "assets/images/categories/item/antingEmasListLeta.png";
String antingpositano =
    "assets/images/categories/item/antingEmasPositano.png";

String cincincheryl =
    "assets/images/categories/item/cincinEmasCheryl.png";
String cincinkorea =
    "assets/images/categories/item/cincinEmasKorea.png";
String cincinmoona =
    "assets/images/categories/item/cincinEmasMoona.png";
String cincinpositano =
    "assets/images/categories/item/cincinEmasPositano.png";

String liontinamalfi =
    "assets/images/categories/item/liontinEmasAmalfiCoastStarMotherOfPearlPendant17KSemarNusantara.png";
String liontinclassic =
    "assets/images/categories/item/liontinEmasClassicSolitaireGold17KSemarNusantara.png";
String liontinbusan =
    "assets/images/categories/item/liontinEmasKoreaSpringinBusanPendantCollection17KInYourSeoul.png";
String liontinmutiara =
    "assets/images/categories/item/liontinMutiaraEmasTheCaribbeaAtlantisSeriesWavePendant.png";

String iKalung = "assets/images/icon/1.png";
String iGelang = "assets/images/icon/3.png";
String iAnting = "assets/images/icon/5.png";
String iLiontin = "assets/images/icon/2.png";
String iCincin = "assets/images/icon/4.png";
