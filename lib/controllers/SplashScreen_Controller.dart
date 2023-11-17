import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage.dart';
import 'package:metal_marketplace/pages/LandingPage.dart';
import 'package:metal_marketplace/pages/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:metal_marketplace/pages/LoginPage.dart';
import 'package:metal_marketplace/pages/HomePage.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if(prefs.getString('username') == null){
        Get.off(LandingPage());
      }else{
        Get.off(HomePage());
      }
    });

  }
}
