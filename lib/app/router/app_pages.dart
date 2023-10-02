import 'package:demo/app/modules/auth/sign_in/bindings/sign_in_binding.dart';
import 'package:demo/app/modules/auth/sign_up/bindings/sign_up_binding.dart';
import 'package:demo/app/modules/auth/sign_up/views/sign_up_view.dart';
import 'package:demo/app/modules/nav/views/nav_view.dart';
import 'package:demo/app/modules/splash_screen/bindings/splash_binding.dart';
import 'package:demo/app/modules/splash_screen/views/splash_view.dart';
import 'package:get/get.dart';
import '../modules/auth/sign_in/views/sign_in_view.dart';
import '../modules/nav/nav_binding.dart/nav_binding.dart';
part 'app_routes.dart';

class AppPages {
  static const initialPage = Routes.splashScreen;

  static final pages = [
    GetPage(
      name: _Path.splashScreen,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Path.signInScreen,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Path.signUpScreen,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Path.navScreen,
      page: () => const NavView(),
      binding: NavBinding(),
    ),
  ];
}
