import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:metal_marketplace/helper/themes.dart';
import '../../global_component/container_total.dart';
import 'components/cart_component_one.dart';
import 'components/cart_component_three.dart';
import 'components/cart_component_two.dart';
import 'controller/Cart_Controller.dart';

class CartPage extends StatelessWidget {
  final cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double height = mediaQuery.height;

    cartController.checkIsProductEmpty();
    cartController.calculateSubTotalPrice();
    cartController.calculateTotalPrice();

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: height * 0.09,
        title: Text('Cart', style: ts18SemiboldBlack),
      ),
      body: Obx(() {
        return cartController.isSelectedProductEmpty.value
            ? Center(
          child: Text(
            'Your cart is empty.',
            style: ts18SemiboldBlack,
          ),
        )
            : Stack(
          children: [
            Container(
              height: height,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CartComponentOne(),
                    CartComponentTwo(),
                    CartComponentThree(),
                  ],
                ),
              ),
            ),
            ContainerTotal(
                context: context,
                textValue: 'Checkout',
                route: '/payment',
                isOffNamed: false),
          ],
        );
      }),
    );
  }
}
