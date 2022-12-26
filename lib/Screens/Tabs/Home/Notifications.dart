import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class Notifications extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        title: "pagenames.notifications".tr,
        profile: true,
      ),
      backgroundColor: lightbgwhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: MediaQuery.of(context).size.height - 100,
              child: ListView.builder(itemBuilder: (context, i) {
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextClass(
                        text:
                            "LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText LongText",
                        weight: FontWeight.bold,
                        size: normalSmalltextSize,
                        color: lightbgdarkColor,
                        align: TextAlign.left,
                        maxline: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextClass(
                        text: "27.05.2022",
                        weight: FontWeight.w500,
                        size: smalltextSize,
                        color: Colors.grey.shade500,
                        align: TextAlign.left,
                        maxline: 2,
                      ),
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
