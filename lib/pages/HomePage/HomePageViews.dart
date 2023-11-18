import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_components_two.dart';
import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double marginSize = 30.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        centerTitle: false,
        elevation: 0,
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(logo, scale: 4,),
            InkWell(
              onTap: () {
                Get.toNamed('/cart');
              },
              child: Container(
                width: screenWidth * 0.1,
                height: screenHeight * 0.1,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: marginSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              HomeComponentTwo(),
            ],
          ),
        ),
      ),
    );
  }
}
