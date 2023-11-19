import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends GetxController {
  late final SharedPreferences prefs;

  RxBool isRoutingFromHomePage = false.obs;
  TextEditingController? cSearchProduct;
  RxInt selectedIndex = 0.obs;
  RxString selectedCategory = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    initializePrefs();
    super.onInit();
  }

  void initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void onSearchProduct(String searchText) {
    cSearchProduct?.text.obs.value = searchText;
  }

  void onCategorySelected(int index) {
    selectedIndex.value = index;
  }
}
