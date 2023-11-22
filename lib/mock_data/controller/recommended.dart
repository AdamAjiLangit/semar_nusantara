import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/controller/anting.dart';
import 'package:metal_marketplace/mock_data/controller/cincin.dart';
import 'package:metal_marketplace/mock_data/controller/gelang.dart';
import 'package:metal_marketplace/mock_data/controller/kalung.dart';
import 'package:metal_marketplace/mock_data/controller/liontin.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';

class RecommendedController extends GetxController{
  RxList<Product> recommended = <Product>[].obs;

  @override
  void onInit() {
    final AntingController antingController = Get.put(AntingController());
    final KalungController kalungController = Get.put(KalungController());
    final GelangController gelangController = Get.put(GelangController());
    final CincinController cincinController = Get.put(CincinController());
    final LiontinController liontinController = Get.put(LiontinController());

    recommended.addAll([antingController.anting[3], kalungController.kalung[5], gelangController.gelang[3], cincinController.cincin[2], liontinController.liontin[2], gelangController.gelang[5]]);
  }
}