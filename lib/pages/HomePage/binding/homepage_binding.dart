import 'package:get/get.dart';

import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
  
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}