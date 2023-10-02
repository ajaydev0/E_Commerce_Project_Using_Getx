part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashScreen = _Path.splashScreen;
  static const navScreen = _Path.navScreen;
  static const signInScreen = _Path.signInScreen;
  static const signUpScreen = _Path.signUpScreen;
}

class _Path {
  _Path._();
  //Web
  static const splashScreen = "/";
  //Device
  // static const splashScreen = "/splash_Screen";
  static const signInScreen = "/sign_in_screen";
  static const signUpScreen = "/sign_up_screen";
  static const navScreen = "/nav_screen";
}
