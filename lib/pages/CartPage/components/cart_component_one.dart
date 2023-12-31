import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../helper/themes.dart';

class CartComponentOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      color: Colors.white,
      height: height * 0.2,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery Address', style: ts12SemiboldGrey),
                  Text('Home', style: ts20SemiboldBlack,)
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primaryColor),
                ),
                padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.003),
                child: Text(
                  'Change',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.015),
          Container(
              width: width * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Color(0xFFD9D9D9)),
              ),
              padding: EdgeInsets.all(width * 0.01),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit_note_sharp,
                    size: 20.0,
                  ),
                  SizedBox(width: width * 0.01),
                  AutoSizeText('Notes', style: ts12SemiboldBlack, group: AutoSizeGroup(),),
                ],
              )
          ),
        ],
      ),
    );
  }
}
