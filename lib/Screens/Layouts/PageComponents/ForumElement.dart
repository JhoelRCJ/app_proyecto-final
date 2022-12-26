import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class ForumElement extends StatelessWidget {
  final String name;
  final String slug;
  final String creatorusername;
  final String creatorprofileimage;
  final String categoryname;
  final int viewcount;
  final int commentcount;

  const ForumElement(
      {required this.name,
      required this.slug,
      required this.creatorusername,
      required this.creatorprofileimage,
      required this.categoryname,
      required this.viewcount,
      required this.commentcount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('forum', arguments: [
        {'slug', slug}
      ]),
      child: Container(
        height: 155,
        width: 170,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: lightbgdarkColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, left: 15, right: 15, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        margin: EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              image: NetworkImage(
                                creatorprofileimage,
                              ),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            )),
                      ),
                      TextClass(
                        text: creatorusername,
                        color: Colors.white60,
                        size: smalltextSize,
                        weight: FontWeight.w400,
                        align: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextClass(
                      text: name,
                      weight: FontWeight.bold,
                      size: normaltextSize,
                      color: productnameColor),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.eye,
                            size: smalltextSize,
                            color: lightbgwhiteColor,
                          ),
                          SizedBox(width: 6),
                          TextClass(
                              text: viewcount.toString(),
                              weight: FontWeight.w500,
                              size: smalltextSize,
                              color: lightbgwhiteColor)
                        ],
                      ),
                      SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.messageSquare,
                            size: smalltextSize,
                            color: lightbgwhiteColor,
                          ),
                          SizedBox(width: 6),
                          TextClass(
                              text: commentcount.toString(),
                              weight: FontWeight.w500,
                              size: smalltextSize,
                              color: lightbgwhiteColor)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextClass(
                          text: categoryname,
                          weight: FontWeight.bold,
                          size: smalltextSize,
                          color: Colors.white)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
