import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global_component/card.dart';
import '../helper/textFrom.dart';
import '../helper/themes.dart';
import '../mock_data/controller/anting.dart';
import '../pages/CatalogPage/Contoller/CatalogPage_Controller.dart';

class MyCategory extends StatelessWidget implements PreferredSizeWidget {
  final AntingController recommendedController = Get.put(AntingController());
  final CatalogPageController catalogPageController = Get.put(CatalogPageController());
  final List<String> categories;
  final RxString selectedCategory;
  final Function(int) onCategorySelected;

  MyCategory({
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return AppBar(
      elevation: 0.0,
      flexibleSpace: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(
                  () => Row(
                children: categories.asMap().entries.map((entry) {
                  final index = entry.key;
                  final category = entry.value;
                  final isSelected = selectedCategory.value == category;

                  return GestureDetector(
                    onTap: () {
                      selectedCategory.value = category;
                      onCategorySelected(index);
                      print(selectedCategory.value);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: isSelected ? primaryColor : Colors.transparent,
                            width: 2, // Lebar underline
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          category,
                          style: GoogleFonts.poppins(
                            color: isSelected ? primaryColor : Colors.black,
                            fontSize: figmaFontsize(16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
