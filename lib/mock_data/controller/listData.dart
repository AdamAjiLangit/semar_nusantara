import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/global_component/card.dart';
import 'package:metal_marketplace/mock_data/model/category.dart';
import 'package:metal_marketplace/pages/CatalogPage/CatalogPage.dart';
import 'package:metal_marketplace/pages/CatalogPage/Components/catalog_component_one.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import '../model/product.dart';
import 'package:metal_marketplace/widget/category.dart';

import 'all_menu.dart';
import 'anting.dart';
import 'cincin.dart';
import 'gelang.dart';
import 'kalung.dart';
import 'liontin.dart';

final AllCategoryController allCategory = Get.put(AllCategoryController());
final AntingController antingController = Get.put(AntingController());
final CincinController cincinController = Get.put(CincinController());
final GelangController gelangController = Get.put(GelangController());
final KalungController kalungController = Get.put(KalungController());
final LiontinController liontinController = Get.put(LiontinController());

Widget switchCaseGridViewProduct({required context}) {
  switch (allCategory.allCategory.value) {
    case 0:
      return cardProduct(context: context, controller: antingController.anting);
    case 1:
      return cardProduct(context: context, controller: cincinController.cincin);
    case 2:
      return cardProduct(context: context, controller: gelangController.gelang);
    case 3:
      return cardProduct(context: context, controller: kalungController.kalung);
    case 4:
      return cardProduct(context: context, controller: liontinController.liontin);
    default:
      throw UnimplementedError("Unhandled category index: " + allCategory.allCategory.value.toString());
  }
}
