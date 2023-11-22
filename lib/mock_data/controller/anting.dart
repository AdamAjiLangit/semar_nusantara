import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class AntingController extends GetxController {
  RxList<Product> anting = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product anting1 = Product(
        "gelang-1",
        "Antin_Emas_Korea_Autumn_Leaves_Collection_Gold_17K_In_Your_Seoul",
        "Anting Emas Korea",
        995000);
    Product anting2 = Product(
        "gelang-2",
        "Anting_Emas_La_Luna_17K_Semar_Nusantara",
        "Anting Emas La Luna",
        789600);
    Product anting3 = Product(
        "gelang-3",
        "Anting_Emas_List_Leta_Rose_Gold_17K_Semar_Nusantara",
        "Anting Emas List Leta",
        899000);
    Product anting4 = Product(
        "gelang-4",
        "Anting_Emas_Positano_Esterna_17K_Semar_Nusantara",
        "Anting Emas Positano",
        715000);

    anting.addAll([anting1, anting2, anting3, anting4]);
  }
}
