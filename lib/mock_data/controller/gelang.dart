import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class GelangController extends GetxController {
  RxList<Product> gelang = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product gelang1 = Product("gelang-1", "Gelang_Emas_Bola_Mrican_3_Warna_10K_Semar_Nusantara", "Gelang Emas Bola Mrican", 1950000);
    Product gelang2 = Product("gelang-2", "Gelang_Emas_Fancy_Love_My_Letter_Bulat_Gold_10K_Semar_Nusantara", "Gelang Emas Fanvy", 2500000);
    Product gelang3 = Product("gelang-3", "Gelang_Emas_Hollow_Niki_Chain_Gold_10K_Semar_Nusantara", "Gelang Emas Niki", 750000);
    Product gelang4 = Product("gelang-4", "Gelang_Emas_Jedar_Love_Gold_Double_Layer_10K_Semar_Nusantara", "Gelang Emas Jedar", 888900);
    Product gelang5 = Product("gelang-5", "Gelang_Emas_Thesya_Butterfly_Hope_Gold_10K_Semar_Nusantara", "Gelang Emas Theysa", 775890);
    Product gelang6 = Product("gelang-6", "Gelang_Serut_Emas_Mini_Aurel_Gold_10K_Semar_Nusantara", "Gelang Serut Emas", 1876000);

    gelang.addAll([gelang1, gelang2, gelang3, gelang4, gelang5, gelang6]);
  }
}
