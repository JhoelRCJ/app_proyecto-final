import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Auth/Login.dart';
import 'package:stoody/Screens/Tabs/MainScreen.dart';
import 'package:stoody/Services/API/SecureStorage.dart';
import 'package:stoody/Services/Getx/AppPages.dart';
import 'package:stoody/Services/Getx/TranslationsStatic.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'Screens/CustomScreens/Splashscreen.dart';

void main() async {
  // await setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SecureStorage secureStorage = SecureStorage();

  var lang = null;

  void initState() {
    secureStorage.readSecureData("lang").then((value) {
      setState(() {
        lang = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Duration(milliseconds: 3),
      title: 'Stoody.org',
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.SPLASH,
      getPages: AppPages.routes,
      translations: TranslationsStatic(),
      locale: lang != null ? Locale(lang.toString()) : Locale('az'),
      fallbackLocale: Locale('az'),
      theme: lightTheme,
      darkTheme: darkTheme,
      // home: Splashscreen(),
    );
  }
}
