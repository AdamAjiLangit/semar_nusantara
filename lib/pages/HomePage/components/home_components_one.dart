import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomePageComponentOne extends StatelessWidget {
  const HomePageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;
    return Scaffold(
      appBar:       AppBar(
        backgroundColor: secondaryColor,
        centerTitle: false,
        elevation: 0,
        toolbarHeight: height * 0.1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(logo, scale: 4,),
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
            ),
          ],
        ),
      ),
    );

  }
}
