import 'package:get/get.dart';

import 'package:metal_marketplace/controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}