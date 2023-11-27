import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:metal_marketplace/mock_data/model/product.dart';

class CatalogPageController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxString selectedCategory = "".obs;
  RxList<Product> productresponsemodel = <Product>[].obs;
  RxList<Product> filteredProducts = <Product>[].obs;
  RxBool isLoading = true.obs;

  final List<String> categories = [
    'All',
    'Anting',
    'Gelang',
    'Kalung',
    'Cincin',
    'Liontin',
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

  void filterProducts() {
    print("Filtering products...");
    print("Selected Category: ${selectedCategory.value}");

    void filterProductsByCategory() {
      if (selectedCategory.value == 'All') {
        filteredProducts.assignAll(productresponsemodel);
      } else {
        filteredProducts.value = productresponsemodel
            .where((product) => product.categories == selectedCategory.value)
            .toList();
      }
      print("Filtered Products: $filteredProducts");
    }

    void onCategorySelected(int index) {
      selectedIndex.value = index;
      selectedCategory.value = categories[index];
      filterProducts();
    }
  }
}
