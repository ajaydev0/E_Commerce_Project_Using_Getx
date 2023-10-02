import 'package:demo/app/router/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    nextPage();
    super.onInit();
  }

  nextPage() {
    Future.delayed(
      const Duration(
        seconds: 5,
      ),
      () {
        Get.offAllNamed(Routes.signInScreen);
        // Get.to(() => const NavView());
      },
    );
  }
}
