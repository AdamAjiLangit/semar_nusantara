import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class CincinController extends GetxController {
  RxList<Product> cincin = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product cincin1 = Product("cincin-1", cincincheryl, "Cincin Emas Cheryl", 99000);
    Product cincin2 = Product("cincin-2", cincinkorea, "Cincin Emas Korea", 890000);
    Product cincin3 = Product("cincin-3", cincinmoona, "Cincin Emas Moona", 13345000);
    Product cincin4 = Product("cincin-4", cincinpositano, "Cincin Emas Positano", 888000);

    cincin.addAll([cincin1, cincin2, cincin3, cincin4]);
  }
}
