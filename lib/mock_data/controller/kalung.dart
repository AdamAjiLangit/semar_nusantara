import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class KalungController extends GetxController {
  RxList<Product> kalung = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product kalung1 = Product("kalung-1", kalungemascassano, "Kalang Emas Cassano", 6000000);
    Product kalung2 = Product("kalung-2", kalungemasgliter, "Kalung Emas Gliter Bola", 750000);
    Product kalung3 = Product("kalung-3", kalungemasrhinestone , "Kalung Emas Round", 999000);
    Product kalung4 = Product("kalung-4", kalungemasstela, "Kalung Emas Stela", 1345000);
    Product kalung5 = Product("kalung-5", kalungemasdaun, "Kalung Emas Variasi", 876900);
    Product kalung6 = Product("kalung-6", kalungemasveeline, "Kalung Emas Veeline", 987650);

    kalung.addAll([kalung1, kalung2, kalung3, kalung4, kalung5, kalung6]);
  }
}
