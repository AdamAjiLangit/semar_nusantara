import 'package:get/get.dart';

import 'package:metal_marketplace/pages/SplashScreen/controller/SplashScreen_Controller.dart';

class SplashScreenBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SplashController>(() => SplashController());
  }
}