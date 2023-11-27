import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';
import 'package:metal_marketplace/helper/themes.dart';
import 'package:metal_marketplace/pages/Checkout/CheckoutView.dart';
import 'package:metal_marketplace/pages/HomePage/HomePageViews.dart';

import '../../global_component/card.dart';
import 'controller/Cart_Controller.dart';

class CartPage extends StatelessWidget {
  final cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: Container(
            child: Text(
              "My Cart",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
          ),
          Container(
            margin: EdgeInsets.only(right: 220),
            child: Text('Your Order(s)', style: subheaderText),
          ),

          Expanded(
            child: Obx(
                  () {
                if (cartController.selectedProducts.isEmpty) {
                  return Center(
                    child: const Icon(
                      Icons.shopping_cart,
                      color: secondaryColor,
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: cartController.selectedProducts.length,
                          itemBuilder: (BuildContext context, int index) {
                            final selectedProduct = cartController.selectedProducts[index];
                            final formattedPrice = NumberFormat.currency(
                              locale: 'en_US',
                              symbol: 'Rp',
                            ).format(selectedProduct.price);

                            return ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(selectedProduct.image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              title: Text(selectedProduct.name),
                              subtitle: Text('Price: $formattedPrice'),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            cartController.checkIsProductEmpty();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Make Order',
                            style: headerText,
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),

        ],
      ),
    );
  }
}
