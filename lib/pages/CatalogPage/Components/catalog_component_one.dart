import 'package:flutter/material.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:get/get.dart';

class CatalogComponentOne extends StatelessWidget {
  const CatalogComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double marginSize = 20.0;

    return AppBar(
      backgroundColor: secondaryColor,
      toolbarHeight: 70,
      elevation: 1,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: marginSize),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logo,
              scale: 5,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/cart');
              },
              child: Container(
                width: screenWidth * 0.08,
                height: screenHeight * 0.08,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  size: 20,
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
