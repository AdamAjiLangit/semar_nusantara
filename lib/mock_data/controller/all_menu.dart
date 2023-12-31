import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/controller/anting.dart';
import 'package:metal_marketplace/mock_data/controller/cincin.dart';
import 'package:metal_marketplace/mock_data/controller/gelang.dart';
import 'package:metal_marketplace/mock_data/controller/kalung.dart';
import 'package:metal_marketplace/mock_data/controller/liontin.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class AllCategoryController extends GetxController{
  RxList<Product> allCategory = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();

    final GelangController gelangController = Get.put(GelangController());
    final KalungController kalungController = Get.put(KalungController());
    final AntingController antingController = Get.put(AntingController());
    final CincinController cincinController = Get.put(CincinController());
    final LiontinController liontinController = Get.put(LiontinController());

    allCategory.addAll(gelangController.gelang);
    allCategory.addAll(kalungController.kalung);
    allCategory.addAll(antingController.anting);
    allCategory.addAll(cincinController.cincin);
    allCategory.addAll(liontinController.liontin);

    allCategory.shuffle();
  }
}