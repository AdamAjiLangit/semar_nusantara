import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/global_component/Navigation_Menu.dart';
import 'package:metal_marketplace/helper/themes.dart';

import '../../routes/app_pages.dart';

class PaymentSucsesPage extends StatelessWidget {
  const PaymentSucsesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    double marginSize = 30.0;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: height * 0.1,
        title: Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.symmetric(horizontal: width * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'Payment Successful',
                  style: GoogleFonts.poppins(
                    fontSize: figmaFontsize(20),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(paymentsuccess), // Gantilah 'assets/paymentsuccess.png' dengan path sesuai gambar Anda
              ],
            ),
            SizedBox(height: 26), // Jarak antara gambar dan teks
            Text(
              'Payment Successful',
              style: GoogleFonts.roboto(
                fontSize: 18,
                color: Color(0xFF1D3A70),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                textAlign: TextAlign.center,
                'Payment are reviewed which may result in delays or funds being frozen',
                style: GoogleFonts.roboto(
                  color: Color(0xFF6B7280),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 100.0),
            ElevatedButton(
              onPressed: () {
                Get.off(NavigationMenu());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                minimumSize: Size(
                  screenWidth * 0.933, // Adjust the width as needed
                  screenHeight * 0.070, // Adjust the height as needed
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Back to Home',
                style: headerText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
