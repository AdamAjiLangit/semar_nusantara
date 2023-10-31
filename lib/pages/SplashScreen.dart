import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metal_marketplace/controllers/SplashScreen_Controller.dart';

class SplashScreen extends StatelessWidget {
  SplashController splashScreenController =
  Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child: Text("splash screen"),),
      ),
    );
  }
}
