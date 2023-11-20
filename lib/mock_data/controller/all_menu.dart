import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/controller/gelang.dart';
import 'package:metal_marketplace/mock_data/controller/kalung.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class AllMenuController extends GetxController{
  RxList<Product> allMenu = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();

    final GelangController gelangController = Get.put(GelangController());
    final KalungController kalungController = Get.put(KalungController());

    allMenu.addAll(gelangController.gelang);
    allMenu.addAll(kalungController.kalung);

    allMenu.shuffle();
  }
}