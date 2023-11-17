import 'package:get/get.dart';

import 'package:metal_marketplace/pages/RegisterPage/register_page.dart';
import 'package:metal_marketplace/routes/route_name.dart';
import 'package:metal_marketplace/pages/SplashScreen/SplashScreen.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:metal_marketplace/pages/HomePage/HomePage.dart';

import '../pages/HomePage/binding/homepage_binding.dart';
import '../pages/LoginPage/binding/login_binding.dart';
import '../pages/RegisterPage/binding/register_binding.dart';
import '../pages/SplashScreen/binding/splashscreen_binding.dart';

class AppPages {
  static const INITIAL = RouteName.splash;
  static final pages = [
    GetPage(
      name: RouteName.splash,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}