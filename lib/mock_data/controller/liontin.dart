import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class LiontinController extends GetxController {
  RxList<Product> liontin = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product liontin1 = Product("liontin-1", "Liontin_Emas_Amalfi_Coast_Star_Mother_Of_Pearl_Pendant_17K_Semar_Nusantara", "Liontin Emas Amalfi", 1890000);
    Product liontin2 = Product("liontin-2", "Liontin_Emas_Classic_Solitaire_Gold_17K_Semar_Nusantara", "Liontin Emas Classic", 989000);
    Product liontin3 = Product("liontin-3", "Liontin_Emas_Korea_Spring_in_Busan_Pendant_Collection17K_In_Your_Seoul", "Liontin Emas Korea", 1790000);
    Product liontin4 = Product("liontin-4", "Liontin_Mutiara_Emas_The_Caribbea_Atlantis_Series_Wave_Pendant", "Liontin Mutiara Emas", 822000);

    liontin.addAll([liontin1, liontin2, liontin3, liontin4]);
  }
}
