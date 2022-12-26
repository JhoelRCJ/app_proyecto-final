import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class QuizResult extends StatefulWidget {
  // const QuizResult({super.key});
  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  var result = Get.arguments;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width - 50,
            margin: EdgeInsets.zero,
            height: 470,
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: lightbgwhiteColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextClass(
                  text: "messages.success".tr,
                  color: lightbgdarkColor,
                  size: headingSize,
                  weight: FontWeight.bold,
                  align: TextAlign.center,
                ),
                SizedBox(
                  height: 200,
                  child: ImageClass(
                      url: "assets/images/cuate.png",
                      type: false,
                      boxfit: BoxFit.cover),
                ),
                SizedBox(height: 15),
                TextClass(
                    text:
                        result != null ? "${result}%" + "score".tr : "score".tr,
                    weight: FontWeight.bold,
                    size: headingSize,
                    color: successColor),
                SizedBox(
                  height: 10,
                ),
                TextClass(
                    text: "quizcompletedsuccessfully".tr,
                    weight: FontWeight.w500,
                    size: normaltextSize,
                    color: lightbgdarkColor),
                SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Material(
                    //Wrap with Material
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 18.0,
                    clipBehavior: Clip.antiAlias, // Add This
                    child: MaterialButton(
                      onPressed: () => Get.toNamed("home"),
                      child: TextClass(
                          color: lightbgwhiteColor,
                          size: buttontextSize,
                          text: "buttons.gohome".tr,
                          weight: FontWeight.w400,
                          align: TextAlign.center),
                      animationDuration: Duration(milliseconds: 3),
                      color: lightbggreenColor,
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
