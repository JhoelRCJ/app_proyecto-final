import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Screens/Tabs/Courses/PageComponents/QuizQuestion.dart';
import 'package:stoody/Services/Controllers/QuizSystemController.dart';
import 'package:stoody/Services/ThemeService.dart';

class QuizSystem extends GetView<QuizSystemController> {
  Widget build(BuildContext context) {
    List<int> text = [0, 1, 2, 3, 4, 5, 6, 7];

    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        title: "Quiz 1",
      ),
      body: Obx(() => PageView(
            allowImplicitScrolling: true,
            controller: controller.pageController,
            padEnds: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(text.length, (index) {
              return Column(
                children: [
                  Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width - 50,
                        height: 500,
                        margin: EdgeInsets.only(top: 8, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 5),
                            Center(
                              child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 50,
                                  child: Obx(
                                    () => TextClass(
                                      color: lightbgdarkColor,
                                      size: buttontextSize,
                                      text:
                                          "${controller.questionnumber}. Sual Adi",
                                      weight: FontWeight.bold,
                                      align: TextAlign.left,
                                      maxline: 2,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 50,
                                child: TextClass(
                                  color: lightbgdarkColor,
                                  size: smalltextSize,
                                  text:
                                      "Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi Sual Aciqlamasi",
                                  weight: FontWeight.bold,
                                  align: TextAlign.left,
                                  maxline: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            QuizQuestion(
                                keyElement: "a",
                                valueElement: "Hmm, that poster looks cool."),
                            QuizQuestion(
                                keyElement: "b",
                                valueElement: "Hmm, that poster looks cool."),
                            QuizQuestion(
                                keyElement: "c",
                                valueElement: "Hmm, that poster looks cool."),
                            QuizQuestion(
                                keyElement: "d",
                                valueElement: "Hmm, that poster looks cool."),
                            QuizQuestion(
                                keyElement: "e",
                                valueElement: "Hmm, that poster looks cool.")
                          ],
                        )),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      controller.questionnumber > 1
                          ? SizedBox(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Material(
                                //Wrap with Material
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                elevation: 18.0,
                                clipBehavior: Clip.antiAlias, // Add This
                                child: MaterialButton(
                                  onPressed: () => controller.previous(),
                                  child: TextClass(
                                      color: lightbgwhiteColor,
                                      size: buttontextSize,
                                      text: "buttons.previous".tr,
                                      weight: FontWeight.w400,
                                      align: TextAlign.center),
                                  animationDuration: Duration(milliseconds: 3),
                                  color: lightbggreenColor,
                                  padding: EdgeInsets.only(top: 18, bottom: 18),
                                ),
                              ),
                            )
                          : SizedBox(height: 0, width: 0),
                      controller.questionnumber == controller.questions
                          ? SizedBox(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Material(
                                //Wrap with Material
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                elevation: 18.0,
                                clipBehavior: Clip.antiAlias, // Add This
                                child: MaterialButton(
                                  onPressed: () => controller.finish(),
                                  child: TextClass(
                                      color: lightbgwhiteColor,
                                      size: buttontextSize,
                                      text: "buttons.finish".tr,
                                      weight: FontWeight.w400,
                                      align: TextAlign.center),
                                  animationDuration: Duration(milliseconds: 3),
                                  color: lightbggreenColor,
                                  padding: EdgeInsets.only(top: 18, bottom: 18),
                                ),
                              ),
                            )
                          : SizedBox(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Material(
                                //Wrap with Material
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                elevation: 18.0,
                                clipBehavior: Clip.antiAlias, // Add This
                                child: MaterialButton(
                                  onPressed: () => controller.next(),
                                  child: TextClass(
                                      color: lightbgwhiteColor,
                                      size: buttontextSize,
                                      text: "buttons.next".tr,
                                      weight: FontWeight.w400,
                                      align: TextAlign.center),
                                  animationDuration: Duration(milliseconds: 3),
                                  color: lightbggreenColor,
                                  padding: EdgeInsets.only(top: 18, bottom: 18),
                                ),
                              ),
                            )
                    ],
                  ),
                ],
              );
            }),
          )),
    );
  }
}
