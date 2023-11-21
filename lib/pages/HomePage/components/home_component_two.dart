import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';
import 'package:metal_marketplace/pages/HomePage/widgets/categories_circle.dart';

class HomeComponentTwo extends StatelessWidget {
  final CatalogPageController catalogPageController = Get.put(CatalogPageController());
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed('/catalog');
                  catalogPageController.selectedCategory= "Anting" as RxString;
                  homePageController.isRoutingFromHomePage.value = true;
                },
                child: CategoriesCircle(
                  context: context,
                  image: iAnting,
                  textValue: "Anting",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/catalog');
                  catalogPageController.selectedCategory= "Cincin" as RxString;
                  homePageController.isRoutingFromHomePage.value = true;
                },
                child: CategoriesCircle(
                  context: context,
                  image: iCincin,
                  textValue: "Cincin",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/menu');
                  catalogPageController.selectedCategory= "Gelang" as RxString;
                  homePageController.isRoutingFromHomePage.value = true;
                },
                child: CategoriesCircle(
                  context: context,
                  image: iGelang,
                  textValue: "Gelang",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/catalog');
                  catalogPageController.selectedCategory= "Kalung" as RxString;
                  homePageController.isRoutingFromHomePage.value = true;
                },
                child: CategoriesCircle(
                  context: context,
                  image: iKalung,
                  textValue: "Kalung",
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed('/catalog');
                  catalogPageController.selectedCategory= "Liontin" as RxString;
                  homePageController.isRoutingFromHomePage.value = true;
                },
                child: CategoriesCircle(
                  context: context,
                  image: iLiontin,
                  textValue: "Liontin",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
