// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../router/app_pages.dart';

class SignInController extends GetxController {
  // Go to Sign Up Screen
  signUpGo() {
    Get.toNamed(Routes.signUpScreen);
  }

  //Key
  final formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPass = TextEditingController();
}
