import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metal_marketplace/controllers/HomePage_Controller.dart';
import 'package:metal_marketplace/helper/themes.dart';

class HomePage extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double marginSize = 30.0;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10),
          ),
          width: screenSize.width - 2 * marginSize,
          height: 81,
          margin: EdgeInsets.all(marginSize),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Current Gold Price',
                  style: moneyMiniText,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 70,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Obx(() => DropdownButton<String>(
                          items: ['USD', 'EUR', 'IDR']
                              .map((String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                              .toList(),
                          onChanged: (String? value) {
                            if (value != null) {
                              controller.selectedCurrency.value = value;
                              controller.fetchGoldPrice();
                            }
                          },
                          value: controller.selectedCurrency.value, // Use the selected currency from the controller
                        )),
                      ),
                    ),
                    Container(
                      width: 179,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        // Display the result here, you may need to adjust this part
                        child: Obx(() => Text(controller.goldPrice.value)),
                      ),
                    ),
                    Container(
                      width: 62,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.fetchGoldPrice();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          onPrimary: secondaryColor,
                        ),
                        child: Text(
                          'Check', style: moneyMiniText,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
