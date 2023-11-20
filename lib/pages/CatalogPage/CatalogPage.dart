import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metal_marketplace/widget/category.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';

import '../HomePage/controller/HomePage_Controller.dart';

class CatalogPage extends StatelessWidget {
  final CatalogPageController controller = Get.put(CatalogPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCategory(
        categories: controller.categories,
        selectedCategory: controller.selectedCategory,
        onCategorySelected: controller.onCategorySelected,
      ),
    );
  }
}