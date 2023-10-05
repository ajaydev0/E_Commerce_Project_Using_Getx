import 'package:demo/app/modules/cart/views/cart_view.dart';
import 'package:demo/app/modules/discover/views/discover_view.dart';
import 'package:demo/app/modules/favorite/views/favorite_view.dart';
import 'package:demo/app/modules/home/views/home_view.dart';
import 'package:demo/app/modules/profile/views/profile_view.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  RxInt selectIndex = 0.obs;

  List pages = [
    const HomeView(),
    const DiscoverView(),
    const CartView(),
    const FavoriteView(),
    const ProfileView(),
  ];
  ontap(int index) {
    selectIndex.value = index;
  }
}
