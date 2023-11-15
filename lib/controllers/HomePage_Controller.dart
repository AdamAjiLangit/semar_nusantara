import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:metal_marketplace/models/Dropdown_Model.dart';

class HomePageController extends GetxController {
  var selectedCurrency = 'EUR'.obs;
  var goldPrice = ''.obs;

  List<DropdownItem> dropdownItems = [
    DropdownItem(
        currency: 'USD',
        apiUrl:
            'https://live-metal-prices.p.rapidapi.com/v1/latest/XAU/USD/gram'),
    DropdownItem(
        currency: 'EUR',
        apiUrl:
            'https://live-metal-prices.p.rapidapi.com/v1/latest/XAU/EUR/gram'),
    DropdownItem(
        currency: 'IDR',
        apiUrl:
            'https://live-metal-prices.p.rapidapi.com/v1/latest/XAU/IDR/gram'),
  ];

  Future<void> fetchGoldPrice() async {
    try {
      final response = await http.get(
        Uri.parse(dropdownItems
            .firstWhere((item) => item.currency == selectedCurrency.value)
            .apiUrl),
        headers: {
          'X-RapidAPI-Host': 'live-metal-prices.p.rapidapi.com',
          'X-RapidAPI-Key':
              '6d63ecc994mshb2657fd68a2fe56p109db2jsn02c8c94df327',
        },
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        var xauRate = data['rates']['XAU'][selectedCurrency.value]['gram'];
        goldPrice.value = '$xauRate USD per gram';
        print('XAU Rate: $xauRate');
      } else if (response.statusCode == 429) {
        print('API rate limit exceeded. Throttling requests...');
        await Future.delayed(Duration(seconds: 5)); // Delay for 5 seconds
        await fetchGoldPrice();
      } else {
        goldPrice.value = 'Error: ${response.statusCode}';
        print('Error fetching data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching data: $error');
      goldPrice.value = 'Error fetching data';
    }
  }
}
