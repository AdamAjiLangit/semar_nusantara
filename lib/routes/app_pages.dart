import 'package:get/get.dart';
import 'package:metal_marketplace/pages/CatalogPage/Binding/HomePage_Binding.dart';
import 'package:metal_marketplace/pages/CatalogPage/CatalogPage.dart';
import 'package:metal_marketplace/pages/HomePage/HomePageViews.dart';
import 'package:metal_marketplace/pages/HomePage/binding/homepage_binding.dart';
import 'package:metal_marketplace/pages/LandingPage/Binding/LandingPage_Binding.dart';
import 'package:metal_marketplace/pages/LandingPage/pages/LandingPage.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:metal_marketplace/pages/LoginPage/binding/login_binding.dart';
import 'package:metal_marketplace/pages/RegisterPage/binding/register_binding.dart';
import 'package:metal_marketplace/pages/RegisterPage/register_page.dart';
import 'package:metal_marketplace/pages/SplashScreen/SplashScreen.dart';
import 'package:metal_marketplace/pages/SplashScreen/binding/splashscreen_binding.dart';
part 'app_routes.dart';


class AppPages {
  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.LANDING_PAGE,
      page: () => LandingPage(),
      binding: LandingBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => HomePage(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.LOGIN_PAGE,
      page: () => LoginPage(),
      binding: LoginBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.SIGNUP_PAGE,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
      transition: Transition.noTransition,
    ),

    GetPage(
      name: Routes.CATALOG_PAGE,
      page: () => CatalogPage(),
      binding: CatalogBinding(),
      transition: Transition.noTransition,
    ),
  ];
}