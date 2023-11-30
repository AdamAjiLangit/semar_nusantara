import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metal_marketplace/pages/SplashScreen/controller/SplashScreen_Controller.dart';
import 'package:metal_marketplace/helper/themes.dart';

class SplashScreen extends GetView<SplashController> {
  SplashController splashScreenController =
  Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              width: 250,
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
