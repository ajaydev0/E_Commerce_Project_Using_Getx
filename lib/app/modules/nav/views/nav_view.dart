import 'package:demo/app/modules/nav/nav_controller.dart/nav_controller.dart';
import 'package:demo/utils/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavView extends GetView<NavController> {
  const NavView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());

    return Scaffold(
      body: Obx(() => controller.pages[controller.selectIndex.value]),
      extendBody: true,
      bottomNavigationBar: SizedBox(
        height: 65,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Obx(
            () => BottomNavigationBar(
              //  height: 65,
              selectedLabelStyle: const TextStyle(
                fontSize: 11,
              ),
              unselectedLabelStyle: TextStyle(
                color: appcolors.grey600,
                fontSize: 11,
              ),
              onTap: (index) {
                controller.ontap(index);
              },

              // backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.selectIndex.value,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    controller.selectIndex.value == 0
                        ? Icons.home
                        : Icons.home_outlined,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    controller.selectIndex.value == 1
                        ? Icons.shopping_bag
                        : Icons.shopping_bag_outlined,
                  ),
                  label: 'Discover',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    controller.selectIndex.value == 2
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    controller.selectIndex.value == 3
                        ? Icons.favorite
                        : Icons.favorite_border,
                  ),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    controller.selectIndex.value == 4
                        ? Icons.person
                        : Icons.person_outlined,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
