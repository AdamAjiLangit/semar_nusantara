import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage.dart';
import 'package:metal_marketplace/pages/LandingPage.dart';
import 'package:metal_marketplace/pages/LandingPage2.dart';

class onPressedController1 extends GetxController{
  void goToNextPage() {
    Get.to(NextlandingPage());
  }
}

class onPressedBackController extends GetxController{
  void backToPage() {
    Get.back(result: LandingPage());
  }
}

class onPressedToController extends GetxController{
  void goToNextPage() {
    Get.to(HomePage());
  }
}