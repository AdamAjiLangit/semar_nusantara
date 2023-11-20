import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatalogPageController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxString selectedCategory = "".obs;

  final List<String> categories = [
    'All',
    'Item',
    'Collection',
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    selectedCategory.value = categories[selectedIndex.value];
    // fetchProduct();
    super.onInit();
  }

  void onCategorySelected(int index) {
    selectedIndex.value = index;
    selectedCategory.value = categories[index];
  }


}
