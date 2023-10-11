// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../auth/user_data/users.dart';
import '../views/logOutBox.dart';

class ProfileController extends GetxController {
  RxBool isDarkactive = false.obs;

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
