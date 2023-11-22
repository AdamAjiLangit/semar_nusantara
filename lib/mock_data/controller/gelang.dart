import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class GelangController extends GetxController {
  RxList<Product> gelang = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product gelang1 = Product("gelang-1", gelangemasbolamrican, "Gelang Emas Bola Mrican", 1950000);
    Product gelang2 = Product("gelang-2", gelangemasfancylove , "Gelang Emas Fanvy", 2500000);
    Product gelang3 = Product("gelang-3", gelangemashollowniki , "Gelang Emas Niki", 750000);
    Product gelang4 = Product("gelang-4", gelangemasjedar, "Gelang Emas Jedar", 888900);
    Product gelang5 = Product("gelang-5", gelangemasthesya , "Gelang Emas Theysa", 775890);
    Product gelang6 = Product("gelang-6", gelangserut , "Gelang Serut Emas", 1876000);

    gelang.addAll([gelang1, gelang2, gelang3, gelang4, gelang5, gelang6]);
  }
}
