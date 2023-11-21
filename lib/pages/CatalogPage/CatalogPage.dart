import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/global_component/app_bar.dart';
import 'package:metal_marketplace/pages/CatalogPage/Components/catalog_component_one.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import 'package:metal_marketplace/widget/category.dart';

class CatalogPage extends StatelessWidget {
  final CatalogPageController controller = Get.put(CatalogPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(),
      body: Column(
        children: [
          CustomAppBar(),
          CatalogComponentOne(),
          MyCategory(
            categories: controller.categories,
            selectedCategory: controller.selectedCategory,
            onCategorySelected: controller.onCategorySelected,
          ),
        ],
      ),
      // NavigationMenu()
    );
  }
}
