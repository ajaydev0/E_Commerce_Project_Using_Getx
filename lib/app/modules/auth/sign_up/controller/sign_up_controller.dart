import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  backGo() {
    Get.back();
  }

  //Key
  final formKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();
}