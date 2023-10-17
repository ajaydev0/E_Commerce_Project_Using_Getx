// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../router/app_pages.dart';
import '../../user_data/users.dart';
import '../views/widgets/Error_DialogBox.dart';
import '../views/widgets/Success_DialogBox.dart';

class SignInController extends GetxController {
  // Validate Email TextFormFeild
  validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return " Required";
    }
    if (!value.trim().contains("@") && !value.trim().contains(".")) {
      return "Email is not valid";
    }
    // if (!value.trim().contains("@gmail.com")) {
    //   return "Enter valid email";
    // }
    return null;
  }

  // Validate Password TextFormFeild
  validatePass(value) {
    if (value == null || value.isEmpty) {
      return " Requied";
    }
    // if (!value.trim().contains("@")) {
    //   return "Enter Strong Password (@)";
    // }
    return null;
  }

  // Sign In Button Click
  signInClick(context, controller) {
    print(box.value.read("userName").toString());
    print(box.value.read("userEmail").toString());
    print(box.value.read("userPass").toString());
    //Validation Key
    if (controller.formKey.currentState!.validate()) {
      if (controller.inputEmail.text ==
              box.value.read("userEmail").toString() &&
          box.value.read("userPass").toString() == controller.inputPass.text) {
        successDialogBox(
          context,
        );
      } else if (box.value.read("userEmail").toString() !=
              controller.inputEmail.text ||
          box.value.read("userPass").toString() != controller.inputPass.text) {
        error_DialogBox(
            context, controller.inputEmail.text, controller.inputPass.text);
      } else {
        error_DialogBox(
            context, controller.inputEmail.text, controller.inputPass.text);
      }
    } else if (controller.inputEmail.text == "" ||
        controller.inputPass.text == "") {
      error_DialogBox(
          context, controller.inputEmail.text, controller.inputPass.text);
    }
  }

  //Clear Controller Lekha
  // clearData(controller) {
  //   () => controller.inputEmail.clear();
  // }

  //Go to Sign Up Page
  goSignUp() {
    Get.offAllNamed(Routes.signUpScreen);
  }

  //Key
  final formKey = GlobalKey<FormState>();
  RxBool passwordVisible = true.obs;
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPass = TextEditingController();

  @override
  void onClose() {
    inputEmail.dispose();
    inputPass.dispose();
    super.onClose();
  }
}
