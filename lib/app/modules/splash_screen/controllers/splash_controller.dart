import 'package:demo/app/modules/auth/user_data/users.dart';
import 'package:demo/app/router/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  // var data = UserData();
  @override
  void onInit() {
    goSplash();
    super.onInit();
  }

  goSplash() async {
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        if (box.value.read("userEmail") == null) {
          Get.offAllNamed(Routes.signUpScreen);
        } else {
          Get.offAllNamed(Routes.navScreen);
        }
      },
    );
  }
}
