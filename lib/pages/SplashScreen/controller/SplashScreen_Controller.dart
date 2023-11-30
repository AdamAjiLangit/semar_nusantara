import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage/HomePageViews.dart';
import 'package:metal_marketplace/pages/LandingPage/pages/LandingPage.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async {
    print("Checking SharedPreferences...");
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 3), () async {
      if (prefs.getString('token') == null) {
        print("Token is null. Navigating to login...");
        Get.offAllNamed('signup');
      } else {
        print("Token found. Navigating to home...");
        Get.offAllNamed('login');
      }
    });
  }

}
