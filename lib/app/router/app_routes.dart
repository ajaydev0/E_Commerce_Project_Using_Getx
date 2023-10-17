part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const navScreen = _Path.navScreen;
  static const signInScreen = _Path.signInScreen;
  static const signUpScreen = _Path.signUpScreen;
  static const homeScreen = _Path.homeScreen;
  static const cartScreen = _Path.cartScreen;
  static const favoriteScreen = _Path.favoriteScreen;
  static const profileScreen = _Path.profileScreen;
  static const myApp = _Path.myApp;
}

class _Path {
  _Path._();
  //Web
  static const splashScreen = "/";
  //Device
  // static const splashScreen = "/splash_Screen";
  static const navScreen = "/nav_screen";
  static const signInScreen = "/sign_in_screen";
  static const signUpScreen = "/sign_up_screen";
  static const homeScreen = "/home_screen";
  static const cartScreen = "/cart_screen";
  static const favoriteScreen = "/favorite_screen";
  static const profileScreen = "/profile_screen";
  static const myApp = '/my-app';
}
