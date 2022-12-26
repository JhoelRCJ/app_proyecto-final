import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/PageComponents/Comments.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ElementsinGeneralData.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

import 'dart:core';

class Forum extends StatefulWidget {
  // const Forum({super.key});
  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  final TextEditingController comment = TextEditingController();
  var opencommentarea = false;
  var ratingcount = 5;
  var topCommentId = null;

  void reply() {
    setState(() {
      opencommentarea = !opencommentarea;
      if (topCommentId != null) {
        topCommentId = 1;
      } else {
        topCommentId = null;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        share: true,
        sharetitle: "Forum",
        shareurl: "Url",
        title: "Php də bu funksiya necə edilə bilər?",
      ),
      body: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextClass(
                      text:
                          """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley """,
                      color: lightbgdarkColor,
                      size: normaltextSize,
                      weight: FontWeight.w400,
                      align: TextAlign.justify,
                      textOverflow: TextOverflow.fade,
                      maxline: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: ElementsInGeneralData(
                      image:
                          'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                      name: "Eyvaz Ceferov",
                      slug: "eyvaz-ceferov",
                      rating: 2,
                      viewcount: 15,
                      sharecount: 20,
                      share: () {
                        setState(() {
                          opencommentarea = !opencommentarea;
                        });
                      }),
                )),
                SizedBox(height: 20),
                if (opencommentarea == true)
                  SizedBox(
                    height: 220,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        StarRating(
                          starCount: 5,
                          rating: ratingcount.toDouble(),
                          fontsize: headingSize,
                          onRatingChanged: (value) {
                            setState(() {
                              ratingcount = value as int;
                            });
                            // print(ratingcount);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InputElement(
                          accentColor: lightbgdarkColor,
                          backgroundColor: lightbgwhiteColor,
                          controller: comment,
                          cornerradius: BorderRadius.all(Radius.circular(5)),
                          placeholder: "forms.sharecomment".tr,
                          textColor: lightbgdarkColor,
                          inputType: TextInputType.text,
                          maxLength: 255,
                          maxline: 5,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            child: MaterialButton(
                              onPressed: () => print("A"),
                              child: TextClass(
                                  color: lightbgwhiteColor,
                                  size: buttontextSize,
                                  text: "buttons.save".tr,
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
                  )
                else
                  SizedBox(width: 0, height: 0),
                SizedBox(height: 5),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextClass(
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        text: "comments".tr,
                        weight: FontWeight.bold,
                        align: TextAlign.left),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                    itemBuilder: (context, i) {
                      return Comments(
                        date: "2 days ago",
                        description:
                            "Hello I am Eyvaz Ceferov and i am developer",
                        image:
                            'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                        name: "Eyvaz Ceferov",
                        isChild: false,
                        reply: () => reply(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
