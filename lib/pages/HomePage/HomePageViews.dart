import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/global_component/app_bar.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_four.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_one.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_two.dart';
import 'package:metal_marketplace/widget/search.dart';
import 'package:metal_marketplace/widget/category.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_three.dart';
import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double marginSize = 20.0;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.1),
          child: CustomAppBar()),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: marginSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeComponentOne(),
              HomeComponentTwo(),
              SizedBox(height: screenHeight * 0.055,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Collection', style: titletext),
                ],
              ),
              HomeComponentThree(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Recommended', style: titletext),
                ],
              ),
              HomeComponentFour(),
            ],
          ),
        ),
      ),
    );
  }
}
