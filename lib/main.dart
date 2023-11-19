import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/global_component/Navigation_Menu.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_one.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:metal_marketplace/pages/ProfilePage/ProfilePage.dart';
import 'package:metal_marketplace/pages/SplashScreen/SplashScreen.dart';
import 'package:metal_marketplace/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: ProfilePage(),
      // home:  const HomeComponentTwo(),
    );
  }
}
