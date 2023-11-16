import 'package:get/get.dart';

import 'package:metal_marketplace/pages/register_page.dart';
import 'package:metal_marketplace/routes/route_name.dart';
import 'package:metal_marketplace/pages/SplashScreen.dart';
import 'package:metal_marketplace/pages/LoginPage.dart';
import 'package:metal_marketplace/pages/HomePage.dart';

import '../bindings/homepage_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/register_binding.dart';
import '../bindings/splashscreen_binding.dart';

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