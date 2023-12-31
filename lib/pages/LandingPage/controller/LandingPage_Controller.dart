import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage/HomePageViews.dart';
import 'package:metal_marketplace/pages/LandingPage/pages/LandingPage.dart';
import 'package:metal_marketplace/pages/LandingPage/pages/LandingPage2.dart';
import 'package:metal_marketplace/pages/LoginPage/LoginPage.dart';
import 'package:page_transition/page_transition.dart';

class onPressedController1 extends GetxController{
  void goToNextPage() {
    Get.to(NextlandingPage(),
    );
  }
}

class onPressedBackController extends GetxController{
  void backToPage() {
    Get.back(result: LandingPage());
  }
}

class onPressedToController extends GetxController{
  void goToNextPage() {
    Get.off(LoginPage());
  }
}

class LandingPageController extends GetxController{

}