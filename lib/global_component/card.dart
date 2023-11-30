import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/CartPage/CartView.dart';
import 'package:metal_marketplace/pages/CartPage/controller/Cart_Controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

Widget cardProduct({required context, required controller}) {
  final CartPageController cartController = Get.put(CartPageController());

  final Size mediaQuery = MediaQuery
      .of(context)
      .size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Obx(() => Container(

    height: height * 0.34,
    margin: EdgeInsets.only(left: width * 0.05),
    child: ListView.builder(
      itemCount: controller.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        var product = controller[index];
        var formattedPrice =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ')
            .format(product.price);
        formattedPrice = formattedPrice.replaceAll(",00", "");

        return Obx(() {
          bool isSelected = cartController.isProductSelected(product);
          return Container(
              width: width * 0.37,
              margin:
              EdgeInsets.only(right: width * 0.025, bottom: height * 0),

              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(product.image, fit: BoxFit.fitHeight),
                      Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: width * 0.03),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              height: width * 0.055,

                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(product.name,
                                    style: moneyMiniText,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2),
                              ),
                            ),

                            SizedBox(height: height * 0.005),
                            Text(formattedPrice, style: moneyMiniText),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: height * 0.04,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                      horizontal: width * 0.015,
                      vertical: height * 0.01,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        cartController.addToSelectedProducts(product);
                        cartController.incrementProductQuantity(product);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Icon(Icons.shopping_cart,
                          size: 20, color: secondaryColor),
                    ),
                  ),
                ],
              ));
        });
      },
    ),
  ));
}
