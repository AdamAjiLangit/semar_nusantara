  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:metal_marketplace/pages/LandingPage/controller/LandingPage_Controller.dart';
  import 'package:page_transition/page_transition.dart';

  import '../../../helper/themes.dart';

  class LandingPage extends StatelessWidget {
    final onPressedController1 controller = Get.put(onPressedController1());

    @override
    Widget build(BuildContext context) {
      double marginSize = 30.0;
      double screenWidth = MediaQuery.of(context).size.width;

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                        promote4,
                        width: 275,
                      ),
                      SizedBox(height: marginSize),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: marginSize),
                        child: Column(
                          children: [
                            Text(
                              'Quality Unleashed, Affordable Elegance',
                              style: moneyText,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: marginSize/2),
                            Text(
                              'Experience the epitome of quality with Semar Group—a blend of exquisite design, affordability, and timeless prestige.',
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
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
