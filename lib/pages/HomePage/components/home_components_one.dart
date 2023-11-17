import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomePageComponentOne extends StatelessWidget {
  const HomePageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    double marginSize = 30.0;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return AppBar(
      backgroundColor: secondaryColor,
      elevation: 0,
      toolbarHeight: height * 0.1,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: marginSize),
        child: Row(
          children: [
            Container(
              width: width * 0.1,
              height: width * 0.1,
              decoration: const BoxDecoration(
                color: secondaryColor,
              ),
              child: Transform.scale(
                scale: 10,
                child: Image.asset(logo),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/cart');
              },
              child: Container(
                width: width * 0.1,
                height: width * 0.1,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: secondaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
