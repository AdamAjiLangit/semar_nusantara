import 'package:get/get.dart';

import 'package:metal_marketplace/controllers/HomePage_Controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}