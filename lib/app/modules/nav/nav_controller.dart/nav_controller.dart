import 'package:demo/Widgets/Container_Widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  int selectIndex = 0;

  List pages = [
    Kcontainer(color: Colors.red),
    Kcontainer(color: Colors.blue),
    Kcontainer(color: Colors.green),
    Kcontainer(color: Colors.yellow),
    Kcontainer(color: Colors.pink),
    // MyHomePage(),
    // Discover_Page(),
    // Cart_Page(),
    // Favorite_Page(),
    // Profile_Page(),
  ];
}
