import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/global_component/app_bar.dart';
import 'package:metal_marketplace/pages/CatalogPage/Components/catalog_component_one.dart';
import 'package:metal_marketplace/pages/CatalogPage/Components/catalog_component_two.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import 'package:metal_marketplace/widget/category.dart';

class CatalogPage extends StatelessWidget {
  final CatalogPageController controller = Get.put(CatalogPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.1),
          child: CustomAppBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatalogComponentOne(),
            CatalogComponentTwo(),
          ],
        ),
      ),
      // NavigationMenu()
    );
  }
}
