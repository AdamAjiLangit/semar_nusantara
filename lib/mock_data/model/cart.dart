import 'package:get/get.dart';

class ProductList {
  final String productId;
  final String productName;
  final String productImage;
  final double price;
  late int quantity;

  ProductList ({
    required this.productId,
    required this.productName,
    required this.productImage,
    required this.price,
    required this.quantity,
});
}
