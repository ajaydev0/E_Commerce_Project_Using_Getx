import 'package:get/get.dart';
import '../views/cart_data/Data_Cart.dart';

class CartController extends GetxController {
  //remove cart item quantity
  void removeFromCart(CartItem item) {
    if (item.quantity.value > 1) {
      (item.quantity.value--);
    } else {
      print("Removed item");

      cartItems.remove(item);
      //Snack Message Show
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(
      //     duration: Duration(seconds: 1),
      //     content: Text('Removed Cart item'),
      //   ),
      // );
    }
  }

  //adjust Quantity
  void adjustQuantity(CartItem item, RxInt newQuantity) {
    if (newQuantity.value >= 1) {
      item.quantity.value = newQuantity.value;
    } else {
      // newQuantity == 1;
      removeFromCart(item);
    }
  }
}
