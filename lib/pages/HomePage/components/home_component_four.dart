import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/global_component/card.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/mock_data/controller/recommended.dart';
import 'package:metal_marketplace/pages/CatalogPage/Contoller/CatalogPage_Controller.dart';
import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';

class HomeComponentFour extends StatelessWidget {
  final RecommendedController recommendedController = Get.put(RecommendedController());
  final CatalogPageController catalogPageController = Get.put(CatalogPageController());
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.05),

        Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Get.toNamed('/menu');
                    homePageController.isRoutingFromHomePage.value = true;
                  },
                  child: Text('See More', style: moneyMiniText)
              ),
            ],
          ),
        ),

        SizedBox(height: height * 0.025),
        cardProduct(context: context, controller: recommendedController.recommended),
      ],
    );
  }
}
