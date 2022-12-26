import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class InstructorWidget extends StatelessWidget {
  final String image;
  final String name;
  final String job;
  final String slug;
  final double course;
  final double blog;
  final String description;

  const InstructorWidget(
      {required this.image,
      required this.name,
      required this.job,
      required this.slug,
      required this.course,
      required this.blog,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      margin: EdgeInsets.only(top: 10),
      child: Center(
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 8),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                          image,
                        ),
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        opacity: 1,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.width - 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextClass(
                            text: name,
                            weight: FontWeight.bold,
                            size: subHeadingSize,
                            color: lightbgdarkColor),
                        SizedBox(
                          height: 5,
                        ),
                        TextClass(
                            text: job,
                            weight: FontWeight.bold,
                            size: normaltextSize,
                            color: lightbgdarkColor),
                        TextClass(
                            text: course.toString() + " courses".tr,
                            weight: FontWeight.w400,
                            size: smalltextSize,
                            color: lightbgdarkColor),
                        TextClass(
                            text: blog.toString() + " blogs".tr,
                            weight: FontWeight.w400,
                            size: smalltextSize,
                            color: lightbgdarkColor),
                      ],
                    ),
                  )
                ]),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              child: TextClass(
                color: lightbgdarkColor,
                size: normaltextSize,
                weight: FontWeight.w400,
                align: TextAlign.left,
                maxline: 15,
                text: description,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Material(
                //Wrap with Material
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                        color: lightbgdarkColor,
                        width: 2,
                        style: BorderStyle.solid)),
                clipBehavior: Clip.antiAlias, // Add This
                child: MaterialButton(
                  onPressed: () => Get.toNamed("profile", arguments: [
                    {slug: slug}
                  ]),
                  child: TextClass(
                      color: lightbgdarkColor,
                      size: buttontextSize,
                      text: "buttons.viewprofile".tr,
                      weight: FontWeight.w400,
                      align: TextAlign.center),
                  animationDuration: Duration(milliseconds: 3),
                  color: lightbgwhiteColor,
                  padding: EdgeInsets.only(top: 18, bottom: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
