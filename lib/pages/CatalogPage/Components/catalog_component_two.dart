import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/controller/all_menu.dart';
import 'package:metal_marketplace/mock_data/controller/anting.dart';
import 'package:metal_marketplace/mock_data/controller/cincin.dart';
import 'package:metal_marketplace/mock_data/controller/gelang.dart';
import 'package:metal_marketplace/mock_data/controller/kalung.dart';
import 'package:metal_marketplace/mock_data/controller/liontin.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import 'package:metal_marketplace/pages/CatalogPage/Widget/grid_view_product.dart';

class CatalogComponentTwo extends StatelessWidget {
  final CatalogPageController controller = Get.put(CatalogPageController());
  final GelangController gelangController = Get.put(GelangController());
  final AntingController antingController = Get.put(AntingController());
  final CincinController cincinController = Get.put(CincinController());
  final KalungController kalungController = Get.put(KalungController());
  final LiontinController liontinController = Get.put(LiontinController());
  final AllCategoryController allCategoryController =
      Get.put(AllCategoryController());


  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return DefaultTabController(
        length: controller.categories.length,
        child: Column(
          children: [
            TabBar(
                // isScrollable: true, // Allow tabs to be scrollable if there are many
                labelColor:
                    primaryColor, // Set label (text) color for selected tab
                indicatorColor: primaryColor,
                indicatorWeight: 3.0,
                tabs: [
                  for (String category in controller.categories)
                    Tab(text: category),
                ]),
            Container(
              height: height,
              width: width,
              child: TabBarView(
                children: [
                  Tab(
                      child: gridViewProduct(
                          context: context,
                          controller: allCategoryController.allCategory)),
                  Tab(
                      child: gridViewProduct(
                          context: context,
                          controller: antingController.anting)),
                  Tab(
                      child: gridViewProduct(
                          context: context,
                          controller: cincinController.cincin)),
                  Tab(
                      child: gridViewProduct(
                          context: context,
                          controller: gelangController.gelang)),
                  Tab(
                      child: gridViewProduct(
                          context: context,
                          controller: kalungController.kalung)),
                  Tab(
                      child: gridViewProduct(
                          context: context,
                          controller: liontinController.liontin)),
                ],
              ),
            )
          ],
        ));
  }
}
