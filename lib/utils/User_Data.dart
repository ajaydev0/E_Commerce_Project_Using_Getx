// ignore_for_file: file_names, non_constant_identifier_names

import 'package:demo/app/modules/auth/user_data/users.dart';

class KData {
  static String userName = "Emilia Clarke";
  //amni
  static String? userEmail = box.value.read("userEmail").toString();
  static String? UserPass = box.value.read("userPass").toString();

  //Login Data
  // static String userEmail = "test@gmail.com";
  // static String UserPass = "@1234";
}
