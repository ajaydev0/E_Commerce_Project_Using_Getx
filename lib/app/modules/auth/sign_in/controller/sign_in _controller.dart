// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  // // Sign Up Button Click
  // signInClick(context) {
  //   print(box.value.read("userName").toString());
  //   print(box.value.read("userEmail").toString());
  //   print(box.value.read("userPass").toString());
  //   //Validation Key
  //   if (controller.formKey.currentState!.validate()) {
  //     if (controller.inputEmail.text ==
  //             box.value.read("userEmail").toString() &&
  //         box.value.read("userPass").toString() == controller.inputPass.text) {
  //       successDialogBox(
  //         context,
  //       );
  //     } else if (box.value.read("userEmail").toString() !=
  //             controller.inputEmail.text ||
  //         box.value.read("userPass").toString() != controller.inputPass.text) {
  //       error_DialogBox(
  //           context, controller.inputEmail.text, controller.inputPass.text);
  //     } else {
  //       error_DialogBox(
  //           context, controller.inputEmail.text, controller.inputPass.text);
  //     }
  //   } else if (controller.inputEmail.text == "" ||
  //       controller.inputPass.text == "") {
  //     error_DialogBox(
  //         context, controller.inputEmail.text, controller.inputPass.text);
  //   }
  // }

  //Key
  final formKey = GlobalKey<FormState>();
  RxBool passwordVisible = true.obs;
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPass = TextEditingController();
}
