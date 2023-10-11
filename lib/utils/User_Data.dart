// ignore_for_file: file_names, non_constant_identifier_names

import 'package:demo/app/modules/auth/user_data/users.dart';
import 'package:flutter/material.dart';

class KData {
  static String userName = "Emilia Clarke";
  //User Data Read
  static String? userEmail = box.value.read("userEmail").toString();
  static String? UserPass = box.value.read("userPass").toString();
  //Theme Data Read
  // static ThemeData? themeData = box.value.read('themeData');

  //Login Data
  // static String userEmail = "test@gmail.com";
  // static String UserPass = "@1234";
}
