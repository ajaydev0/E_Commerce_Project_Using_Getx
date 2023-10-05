// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/views/cart_data/Data_Cart.dart';
import '../views/home_data/Box1_Data_PageView.dart';

class HomeController extends GetxController {
  // Toast
  void showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        content: const Text('Added to Cart Successfully!'),
        action: SnackBarAction(
            label: 'Ok', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  // Cart Add logic
  void addToCart(Product product) {
    // if the product is already in cart
    for (CartItem item in cartItems) {
      if (item.product == product) {
        if (item.quantity.value == 5) {
          return print("5 bar add hoye gese, Khela Ses");
        }
        (item.quantity++);
        return print("Add Quantity");
      }
    }

    // If not, add it to the cart
    print("Data Added SuccessFully");

    cartItems.add(CartItem(product, 1.obs));
  }

  int selectedIndex = 0;

  late PageController pageController;
  @override
  void onInit() {
    pageController =
        PageController(initialPage: selectedIndex, viewportFraction: .9);
    super.onInit();
  }

  kscale(int index) {
    if (selectedIndex == index) {
      return 1.0;
    } else {
      return 0.8;
    }
  }
}
