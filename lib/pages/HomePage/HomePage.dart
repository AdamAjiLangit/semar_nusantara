import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage/controller/HomePage_Controller.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double marginSize = 30.0;

    return Scaffold();
  }
}
