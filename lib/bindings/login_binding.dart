import 'package:get/get.dart';

import 'package:metal_marketplace/controllers/Login_Controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
  }
}