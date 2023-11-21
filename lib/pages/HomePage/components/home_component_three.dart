import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomeComponentThree extends StatelessWidget {
  const HomeComponentThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
        width: width,
        child: CarouselSlider(
          items: [promote1, promote2, promote3, promote4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(i),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 300,
            enableInfiniteScroll: true,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeFactor: 0.3,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ));
  }
}
