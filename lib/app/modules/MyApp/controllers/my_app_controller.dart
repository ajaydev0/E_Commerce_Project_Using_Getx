import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/local_theme_data.dart';

class MyAppController extends GetxController {
  RxBool theme = false.obs;
  @override
  void onInit() {
    checkTheme();
    super.onInit();
  }

  checkTheme() async {
    theme.value = await LocalData().getThemeData();
    Get.changeThemeMode(theme.value ? ThemeMode.light : ThemeMode.dark);
  }

  lightMode() {
    theme.value = true;
    LocalData().setThemeData(theme.value);
    Get.changeThemeMode(theme.value ? ThemeMode.light : ThemeMode.dark);
  }

  darkMode() {
    theme.value = false;
    LocalData().setThemeData(theme.value);
    Get.changeThemeMode(theme.value ? ThemeMode.light : ThemeMode.dark);
  }

  systemMode() {
    Get.changeThemeMode(ThemeMode.system);
    // Get.changeThemeMode( ThemeMode.system = darkMode() ?  theme.value = false : theme.value = true );
    // theme.value =! theme.value;
    // print(theme.value);
    // LocalData().setThemeData(theme.value);
  }

  // flicker() {
  //   if (theme.value = !true) {
  //     ThemeMode.light;
  //   } else if (theme.value = !false) {
  //     ThemeMode.dark;
  //   }
  // }
}
