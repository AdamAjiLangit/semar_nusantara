import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class AntingController extends GetxController {
  RxList<Product> anting = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product anting1 = Product("anting-1", antingkorea, "Anting Emas Korea", 995000);
    Product anting2 = Product("anting-2", antinglaluna, "Anting Emas La Luna", 789600);
    Product anting3 = Product("anting-3", antingleta, "Anting Emas List Leta", 899000);
    Product anting4 = Product("anting-4", antingpositano, "Anting Emas Positano", 715000);

    anting.addAll([anting1, anting2, anting3, anting4]);
  }
}
