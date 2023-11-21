import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class CincinController extends GetxController {
  RxList<Product> cincin = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product cincin1 = Product("cincin-1", "Cincin_Emas_Cheryl_Rose_Gold_17K_Semar_Nusantara", "Cincin Emas Cheryl", 99000);
    Product cincin2 = Product("cincin-2", "Cincin_Emas_Korea_Spring_in_Busan_Flying_Butterfly_17K_In_Your_Seoul", "Cincin Emas Kores", 890000);
    Product cincin3 = Product("cincin-3", "Cincin_Emas_Moona_Rose_Gold_17K_Semar_Nusantara", "Cincin Emas Moona", 13345000);
    Product cincin4 = Product("cincin-4", "Cincin_Emas_Positano_Dazzling_Ring_17K_Semar_Nusantara", "Cincin Emas Positano", 888000);

    cincin.addAll([cincin1, cincin2, cincin3, cincin4]);
  }
}
