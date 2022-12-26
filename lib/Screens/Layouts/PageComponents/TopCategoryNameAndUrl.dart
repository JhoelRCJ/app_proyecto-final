import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class TopCategoryNameAndUrl extends StatelessWidget {
  final String name;
  final String slug;
  final String type;

  const TopCategoryNameAndUrl(
      {required this.name, required this.slug, this.type = "course"});

  String getTitleType(data, type) {
    if (type == "course") {
      return "topcoursesoncat".tr + " " + data;
    } else if (type == "forum") {
      return "topbforumssoncat".tr + " " + data;
    } else if (type == "blog") {
      return "topblogsoncat".tr + " " + data;
    } else if (type == "quiz") {
      return "topquizesoncat".tr + " " + data;
    } else {
      return "topcoursesoncat".tr + " " + data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Get.toNamed('category', arguments: [
            {'slug': slug}
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextClass(
              text: getTitleType(name, type),
              weight: FontWeight.w900,
              size: categorynameSize,
              color: lightbgdarkColor),
          Icon(
            FontAwesomeIcons.arrowRight,
            size: pagetitleSize,
          ),
        ],
      ),
    );
  }
}
