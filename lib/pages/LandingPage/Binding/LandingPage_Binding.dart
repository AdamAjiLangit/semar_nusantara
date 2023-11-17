import 'package:get/get.dart';
import 'package:metal_marketplace/pages/LandingPage/controller/LandingPage_Controller.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LandingPageController>(() => LandingPageController());
  }
}