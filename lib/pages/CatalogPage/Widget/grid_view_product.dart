import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/CartPage/controller/Cart_Controller.dart';

Widget gridViewProduct({required context, required controller}) {
  final CartPageController cartController = Get.put(CartPageController());

  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    margin: EdgeInsets.only(
      left: width * 0.05,
      right: width * 0.05,
      bottom: height * 0.1,
      top: height * 0.05,
    ),
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: width * 0.45,
        mainAxisExtent: height * 0.39,
        childAspectRatio: 1 / 2,
        crossAxisSpacing: width * 0.04,
        mainAxisSpacing: 2,
      ),
      itemCount: controller.length,
      itemBuilder: (context, index) {
        var product = controller[index];
        var formattedPrice =
            NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ')
                .format(product.price);
        formattedPrice = formattedPrice.replaceAll(",00", "");

        return Container(
          margin: EdgeInsets.only(bottom: height * 0.01),
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
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.015),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(product.name, style: moneyMiniText),
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
          ),
        );
      },
    ),
  );
}
