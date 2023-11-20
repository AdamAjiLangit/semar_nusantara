import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class KalungController extends GetxController {
  RxList<Product> kalung = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product kalung1 = Product("kalung-1", "Kalung_Emas_Cassano_Farasha_Butterfly_Gold_10K_Semar_Nusantara", "Kalang Emas Cassano", 6000000);
    Product kalung2 = Product("kalung-2", "Kalung_Emas_Gliter Bola_Satin_Rose_White_Gold_10K_Semar_usantara", "Kalung Emas Gliter Bola", 750000);
    Product kalung3 = Product("kalung-3", "Kalung_Emas_Round_Rhinestone_Gold_10K_Semar_Nusantara", "Kalung Emas Round", 999000);
    Product kalung4 = Product("kalung-4", "Kalung_Emas_Stela_Variasi_Bola_Gliter_Gold_10K_Semar_Nusantara", "Kalung Emas Stela", 1345000);
    Product kalung5 = Product("kalung-5", "Kalung_Emas_Variasi_Daun_Gold_10K_Semar_Nusantara", "Kalung Emas Variasi", 876900);
    Product kalung6 = Product("kalung-6", "Kalung_Emas_Veeline_Gold_10K_Semar_Nusantara", "Kalung Emas Veeline", 987650);

    kalung.addAll([kalung1, kalung2, kalung3, kalung4, kalung5, kalung6]);
  }
}
