import 'package:flutter/material.dart';

const Color lightbgwhiteColor = Color(0xffffffff);
const Color lightbggreenColor = Color(0xff27B6A2);
const Color lightbgdarkColor = Color(0xff222121);
const Color productnameColor = Colors.white54;

const Color successColor = Color(0xff009944);
const Color errorColor = Color(0xffcf000f);
const Color warningColor = Color(0xffff9800);
const Color infoColor = Color(0xff63c0df);

const double headingSize = 32;
const double subHeadingSize = 25;
const double normaltextSize = 17;
const double normalSmalltextSize = 15;
const double buttontextSize = 20;
const double ultrasmalltextSize = 10.80;
const double smalltextSize = 14;
const double pagetitleSize = 18;
const double bottombariconSize = 30;
const double categorynameSize = 16;
const double addtobasketSize = 24;

ThemeData darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));

ThemeData lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ));
