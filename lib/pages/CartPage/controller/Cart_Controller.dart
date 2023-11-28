import 'package:get/get.dart';
import 'package:metal_marketplace/mock_data/controller/all_menu.dart';
import 'package:metal_marketplace/mock_data/model/cart.dart';
import 'package:metal_marketplace/mock_data/model/product.dart';
import 'package:intl/intl.dart';
import 'package:metal_marketplace/pages/CartPage/CartView.dart';
import 'package:metal_marketplace/pages/Checkout/CheckoutView.dart';

class CartPageController extends GetxController {
  final AllCategoryController allCategoryController = Get.put(AllCategoryController());
  RxList<Product> selectedProducts = <Product>[].obs;
  RxDouble subTotalPrice = 0.0.obs;
  RxList<Product> cart = <Product>[].obs;
  RxDouble totalPrice = 0.0.obs;
  RxString formattedSubTotalPrice = ''.obs;
  RxString formattedTotalPrice = ''.obs;
  RxBool isSelectedProductEmpty = false.obs;
  RxInt quantity = 1.obs;



  void addToCart(Product product) {
    selectedProducts.add(product);

    // Show a snackbar
    Get.snackbar(
      'Item Added',
      '${product.name} has been added to your cart',
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      // You can customize the appearance of the snackbar further if needed
    );
  }

  void checkIsProductEmpty() {
    isSelectedProductEmpty.value = selectedProducts.isEmpty;
  }

  void checkIsCartEmpty() {
    if (cart.isEmpty) {
      // Cart is empty, perform actions accordingly
      print('Cart is empty');
    } else {
      // Cart is not empty, perform other actions

    }
  }

  void addToSelectedProducts(Product product) {
    selectedProducts.add(product);
  }

  void removeFromSelectedProducts(Product product) {
    selectedProducts.remove(product);
    selectedProducts.refresh();

    // Show a snackbar
    Get.snackbar(
      'Item Removed',
      '${product.name} has been removed from your cart',
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 3),
      // You can customize the appearance of the snackbar further if needed
    );
  }

  bool isProductSelected(Product product) {
    return selectedProducts.contains(product);
  }

  void incrementProductQuantity(Product product) {
    product.quantity.value++;
  }

  void decrementProductQuantity(Product product) {
    if (product.quantity > 0) {
      product.quantity.value--;
      if (product.quantity.value == 0) {
        removeFromSelectedProducts(product);
        checkIsProductEmpty();
      }
    }
  }

  String formatPrice(double price) {
    var formattedPrice = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(price);
    return formattedPrice.replaceAll(",00", "");
  }

  void calculateSubTotalPrice() {
    double total = 0.0;
    for (Product product in selectedProducts) {
      total += (product.price * product.quantity.value);
    }
    subTotalPrice.value = total;
    formattedSubTotalPrice.value = formatPrice(subTotalPrice.value);
  }

  void calculateTotalPrice() {
    double ongkir = 25000;
    totalPrice.value = subTotalPrice.value + ongkir;
    formattedTotalPrice.value = formatPrice(totalPrice.value);
  }



  void clearSelectedProducts() {
    selectedProducts.clear();
    for (Product product in allCategoryController.allCategory) {
      product.quantity.value = 0;
    }
    checkIsProductEmpty();
  }
}