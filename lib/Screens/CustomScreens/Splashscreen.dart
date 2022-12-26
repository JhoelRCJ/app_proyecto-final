import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/CustomScreens/Tutorialpages.dart';
import 'package:stoody/Services/API/SecureStorage.dart';
import '../../Services/ThemeService.dart';

class Splashscreen extends StatefulWidget {
  // const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  SecureStorage secureStorage = SecureStorage();
  @override
  void initState() {
    secureStorage.readSecureData("lang").then((value) {
      if (value == null) {
        secureStorage.writeSecureData("lang", "az");
      }
    });

    Timer(Duration(seconds: 3), () => Get.to(Tutorialpages()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                child: Image.asset('assets/images/stoodylogo.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: CircularProgressIndicator(
                  color: lightbggreenColor,
                  backgroundColor: lightbggreenColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
