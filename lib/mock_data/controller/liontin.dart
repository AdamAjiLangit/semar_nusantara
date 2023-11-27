import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class LiontinController extends GetxController {
  RxList<Product> liontin = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product liontin1 = Product("liontin-1", liontinamalfi, "Liontin Emas Amalfi", 1890000);
    Product liontin2 = Product("liontin-2", liontinclassic, "Liontin Emas Classic", 989000);
    Product liontin3 = Product("liontin-3", liontinbusan, "Liontin Emas Korea", 1790000);
    Product liontin4 = Product("liontin-4", liontinmutiara, "Liontin Mutiara Emas", 822000);

    liontin.addAll([liontin1, liontin2, liontin3, liontin4]);
  }
}
