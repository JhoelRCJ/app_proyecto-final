import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/ListElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class ThanksPage extends StatefulWidget {
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  final bool stat = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        profile: true,
      ),
      backgroundColor: lightbgwhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 220,
              child: stat == true
                  ? ImageClass(
                      url: "assets/images/thanksicon.png",
                      type: false,
                      boxfit: BoxFit.contain,
                    )
                  : ImageClass(
                      url: "assets/images/erroricon.png",
                      type: false,
                      boxfit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: TextClass(
                color: lightbgdarkColor,
                size: subHeadingSize,
                text: "ordercompleted".tr,
                weight: FontWeight.bold,
                align: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 170,
              child: Column(children: [
                ListElement(
                    title: "continueshopping".tr,
                    iconleft: Icon(FeatherIcons.shoppingCart),
                    page: 'cart'),
                ListElement(
                    title: "gotoprofile".tr,
                    iconleft: Icon(FeatherIcons.user),
                    page: 'mylessons'),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
