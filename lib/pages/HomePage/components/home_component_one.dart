import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomeComponentOne extends StatelessWidget {
  const HomeComponentOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 0.7,
        enlargeCenterPage: true,
        enlargeFactor: 0.13,
        pageSnapping: true,
        autoPlayCurve: Curves.linearToEaseOut,
        autoPlayAnimationDuration: Duration(seconds: 3),
        ),
        itemBuilder: (context, index, realIndex) => ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Image.asset(
              caribea
            ),
          ),
        )
      )
    );
  }
}
