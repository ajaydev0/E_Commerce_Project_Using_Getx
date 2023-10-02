import 'package:get/get.dart';
import '../nav_controller.dart/nav_controller.dart';

class NavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavController>(() => NavController());
  }
}
