import 'package:get/get.dart';
import 'package:stoody/Screens/Auth/ForgetPassword.dart';
import 'package:stoody/Screens/Auth/Login.dart';
import 'package:stoody/Screens/Auth/Register.dart';
import 'package:stoody/Screens/CustomScreens/Splashscreen.dart';
import 'package:stoody/Screens/Tabs/MainScreen.dart';

part 'AppRoutes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const AUTH = Routes.AUTH_LOGIN;
  static const SPLASH = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => MainScreen(),
    ),
    GetPage(name: _Paths.SPLASH, page: () => Splashscreen()),
    GetPage(
      name: _Paths.AUTH_LOGIN,
      page: () => Login(),
    ),
    GetPage(
      name: _Paths.AUTH_REGISTER,
      page: () => Register(),
    ),
    GetPage(
      name: _Paths.AUTH_FORGETPASS,
      page: () => ForgetPassword(),
    ),
  ];
}
