// ignore_for_file: file_names
//Cart list
import 'package:get/get.dart';

import '../../../home/views/home_data/Box1_Data_PageView.dart';

class CartItem {
  final Product product;
  RxInt quantity;

  CartItem(this.product, this.quantity);
}

RxList<dynamic> cartItems = [
  // CartItem(products[0], 0)
].obs;
