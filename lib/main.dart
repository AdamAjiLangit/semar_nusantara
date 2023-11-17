import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage/HomePage.dart';
import 'package:metal_marketplace/pages/LandingPage/pages/LandingPage.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:metal_marketplace/pages/SplashScreen/SplashScreen.dart';
import 'package:metal_marketplace/pages/RegisterPage/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: RegisterPage(),
    );
  }
}
