import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';

class HomeComponentTwo extends StatelessWidget {
  final CatalogPageController menuPageController = Get.put(CatalogPageController());
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return const Placeholder();
  }
}
