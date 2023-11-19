import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_one.dart';
import 'package:metal_marketplace/widget/search.dart';
import 'package:metal_marketplace/pages/HomePage/components/home_component_two.dart';
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
      appBar: MySearch(
        controller: controller.cSearchProduct,
        onChanged: controller.onSearchProduct,
        // backgroundColor: secondaryColor,
        // toolbarHeight: 70,
        // elevation: 1,
        // title: Padding(
        //   padding: EdgeInsets.symmetric(horizontal: marginSize),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Image.asset(
        //         logo,
        //         scale: 5,
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Get.toNamed('/cart');
        //         },
        //         child: Container(
        //           width: screenWidth * 0.08,
        //           height: screenHeight * 0.08,
        //           decoration: const BoxDecoration(
        //             color: primaryColor,
        //             shape: BoxShape.circle,
        //           ),
        //           child: const Icon(
        //             Icons.shopping_cart,
        //             size: 20,
        //             color: secondaryColor,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: marginSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              HomeComponentOne(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Text('Collection', style: titletext),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: HomeComponentTwo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
