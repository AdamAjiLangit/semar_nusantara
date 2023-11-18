import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomeComponentTwo extends StatelessWidget {
  const HomeComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = Get.mediaQuery.size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
       width: width * 0.6,
      height: height * 0.6,
      decoration: BoxDecoration(color: Colors.black,
      ),
      child: Image.asset(caribea),
    );
  }
}
