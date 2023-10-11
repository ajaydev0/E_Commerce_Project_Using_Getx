// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/local_theme_data.dart';
import '../../auth/user_data/users.dart';
import '../views/logOutBox.dart';

class ProfileController extends GetxController {
  //Theme Materials
  RxBool theme = false.obs;
  @override
  void onInit() {
    checkTheme();
    super.onInit();
  }

  checkTheme() async {
    theme.value = await LocalData().getThemeData();
  }

  changeTheme() {
    theme.value = !theme.value;
    LocalData().setThemeData(theme.value);
    Get.changeThemeMode(theme.value ? ThemeMode.light : ThemeMode.dark);
  }
  //
  //End theme Materials

  //
  var profileName = box.value.read("userName");
  var profileEmail = box.value.read("userEmail");
  //Key
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  //LogOut Dialog Box
  logOutDialogBox(
    context,
  ) {
    return showDialog(
      // barrierDismissible: false,
      context: context,
      builder: (context) {
        return logOutBox(context);
      },
    );
  }
}
