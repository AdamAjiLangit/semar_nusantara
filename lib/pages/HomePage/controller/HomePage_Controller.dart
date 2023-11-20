import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends GetxController {
  late final SharedPreferences prefs;

  RxBool isRoutingFromHomePage = false.obs;
  TextEditingController? cSearchProduct;


  @override
  void onInit() {
    // TODO: implement onInit
    initializePrefs();
    // fetchProduct();
    super.onInit();
  }

  void initializePrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  void onSearchProduct(String searchText) {
    cSearchProduct?.text.obs.value = searchText;
  }

  // void fetchProduct () async {
  //   try{
  //     final response = await http.get(
  //         Uri.parse('https://stationery-api.000webhostapp.com/api/stationery-api/')
  //     );
  //     if(response.statusCode == 200){
  //       productresponsemodel.value = productResponseModelFromJson(response.body);
  //       isLoading(false);
  //     } else {
  //       print('Error: ${response.statusCode}');
  //     }
  //   } catch (e){
  //     print(e);
  //   }
  // }

}
