import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/controllers/LandingPage_Controller.dart';
import 'package:metal_marketplace/helper/themes.dart';

class NextlandingPage extends StatelessWidget {
  final onPressedToController controller = Get.put(onPressedToController());
  final onPressedBackController backController = Get.put(onPressedBackController());

  @override
  Widget build(BuildContext context) {
    double marginSize = 30.0;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: marginSize),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: marginSize * 3,),
                  Image.asset(
                    logo,
                    width: 150,
                  ),
                  SizedBox(height: marginSize * 2,),
                  Image.asset(
                    ball,
                    width: 275,
                  ),
                  SizedBox(height: marginSize),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: marginSize),
                    child: Column(
                      children: [
                        Text(
                          'Excellence in Diamonds Unveiled',
                          style: moneyText,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: marginSize/2),
                        Text(
                          "Semar Group's Diamond Pavilion, GIA-certified, ensures quality, curated collections, and a unique 'buyback' system for diamond and gemstone excellence.",
                          style: moneyMiniText,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: marginSize * 3,),
            Row(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      backController.backToPage();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: secondaryColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.goToNextPage();
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      primary: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: secondaryColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
