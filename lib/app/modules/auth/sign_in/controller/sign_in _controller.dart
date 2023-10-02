import 'package:demo/app/modules/auth/sign_up/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  // Go to Sign Up Screen
  signUpGo() {
    Get.to(() => const SignUpView());
  }

  //Key
  final formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPass = TextEditingController();
}
