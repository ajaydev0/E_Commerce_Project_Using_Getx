import 'package:get/get.dart';

import '../modules/MyApp/bindings/my_app_binding.dart';
import '../modules/MyApp/views/my_app_view.dart';
import '../modules/auth/sign_in/bindings/sign_in_binding.dart';
import '../modules/auth/sign_in/views/sign_in_view.dart';
import '../modules/auth/sign_up/bindings/sign_up_binding.dart';
import '../modules/auth/sign_up/views/sign_up_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/favorite/bindings/favorite_binding.dart';
import '../modules/favorite/views/favorite_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nav/nav_binding.dart/nav_binding.dart';
import '../modules/nav/views/nav_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/splash_screen/bindings/splash_binding.dart';
import '../modules/splash_screen/views/splash_view.dart';

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
      name: _Path.navScreen,
      page: () => const NavView(),
      binding: NavBinding(),
    ),
    //Auth
    GetPage(
      name: _Path.signInScreen,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Path.signUpScreen,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    //
    GetPage(
      name: _Path.homeScreen,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Path.cartScreen,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Path.favoriteScreen,
      page: () => const FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Path.profileScreen,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.myApp,
      page: () => const MyAppView(),
      binding: MyAppBinding(),
    ),
  ];
}
