import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class Comments extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final String date;
  final Function? reply;
  final bool isChild;

  const Comments(
      {required this.name,
      required this.image,
      required this.description,
      required this.date,
      this.reply,
      this.isChild = false});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width - 50,
      margin: EdgeInsets.only(bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(5, 7, 5, 5),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff6F6E6E).withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  margin: EdgeInsets.only(left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
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
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width - 210,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextClass(
                            text: name,
                            weight: FontWeight.bold,
                            size: normaltextSize,
                            color: Color(0xff2897FD)),
                        TextClass(
                          text: description,
                          weight: FontWeight.w500,
                          size: smalltextSize,
                          color: lightbgdarkColor,
                          maxline: 5,
                        ),
                      ]),
                ),
                Container(
                  width: 90,
                  child: Column(
                    children: [
                      TextClass(
                        text: date,
                        weight: FontWeight.w400,
                        size: smalltextSize,
                        color: Colors.grey.shade600,
                        align: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () => reply != null ? reply! : null,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.reply,
                                size: normaltextSize,
                                color: Colors.grey.shade600),
                            TextClass(
                                text: "buttons.reply".tr,
                                weight: FontWeight.w400,
                                size: smalltextSize,
                                color: Colors.grey.shade600),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          isChild == true
              ? Container(
                  padding: EdgeInsets.fromLTRB(5, 7, 5, 5),
                  margin: EdgeInsets.only(bottom: 5, top: 5, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff6F6E6E).withOpacity(0.2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(left: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                            ),
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            opacity: 1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: MediaQuery.of(context).size.width - 230,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextClass(
                                  text: "Eyvaz Ceferov",
                                  weight: FontWeight.bold,
                                  size: normaltextSize,
                                  color: Color(0xff2897FD)),
                              TextClass(
                                text: "Hmm, that poster looks cool.",
                                weight: FontWeight.w500,
                                size: smalltextSize,
                                color: lightbgdarkColor,
                                maxline: 5,
                              ),
                            ]),
                      ),
                      Container(
                        width: 90,
                        child: Column(
                          children: [
                            TextClass(
                              text: "2 days ago",
                              weight: FontWeight.w400,
                              size: smalltextSize,
                              color: Colors.grey.shade600,
                              align: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(width: 0, height: 0),
        ],
      ),
    ));
  }
}
