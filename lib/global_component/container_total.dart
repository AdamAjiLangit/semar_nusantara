import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/themes.dart';
import '../pages/CartPage/controller/Cart_Controller.dart';
import '../pages/PaymentSucsesPage/PaymentSucsesPage.dart';

Widget ContainerTotal({required context, required String textValue, required String route, required bool isOffNamed}) {
  final CartPageController cartController = Get.put(CartPageController());

  final Size mediaQuery = MediaQuery.of(context).size;
  final double height = mediaQuery.height;
  final double width = mediaQuery.height;

  return Positioned(
    left: 0,
    right: 0,
    bottom: 0,
    child: Obx(() => Container(
      height: height * 0.125,
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total', style: ts14MediumGrey),
              Text(cartController.formattedTotalPrice.value,
                  style: ts20MediumBlack),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PaymentSucsesPage());
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04, vertical: height * 0.015),
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              textValue,
              style: ts16SemiboldWhite,
            ),
          ),
        ],
      ),
    )),
  );
}