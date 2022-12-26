import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class ElementsInGeneralData extends StatelessWidget {
  final String image;
  final String name;
  final String slug;
  final double rating;
  final int viewcount;
  final int sharecount;
  final Function? share;

  const ElementsInGeneralData(
      {required this.image,
      required this.name,
      required this.slug,
      required this.rating,
      required this.viewcount,
      required this.sharecount,
      this.share});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(FeatherIcons.eye,
                size: normaltextSize, color: Colors.grey.shade800),
            SizedBox(
              width: 5,
            ),
            TextClass(
                text: viewcount.toString(),
                weight: FontWeight.w400,
                size: normaltextSize,
                color: Colors.grey.shade800)
          ],
        ),
        SizedBox(
          width: share != null ? 10 : 20,
        ),
        Row(
          children: [
            Icon(FeatherIcons.messageCircle,
                size: normaltextSize, color: Colors.grey.shade800),
            SizedBox(
              width: 5,
            ),
            TextClass(
                text: sharecount.toString(),
                weight: FontWeight.w400,
                size: normaltextSize,
                color: Colors.grey.shade800)
          ],
        ),
        SizedBox(
          width: share != null ? 10 : 20,
        ),
        GestureDetector(
          onTap: () => Get.toNamed('profile', arguments: [
            {'slug': 'name'}
          ]),
          child: Container(
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
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
                Column(
                  children: [
                    SizedBox(
                      width: 95,
                      child: TextClass(
                        text: name,
                        weight: FontWeight.bold,
                        size: smalltextSize,
                        color: Color(0xff6F6E6E),
                        textOverflow: TextOverflow.fade,
                        align: TextAlign.left,
                      ),
                    ),
                    StarRating(
                      rating: 3,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        share != null
            ? GestureDetector(
                onTap: () => share!(),
                child: Container(
                  width: 45,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.reply,
                          size: normaltextSize, color: Colors.grey.shade600),
                      TextClass(
                          text: "buttons.reply".tr,
                          weight: FontWeight.w400,
                          size: smalltextSize,
                          color: Colors.grey.shade600),
                    ],
                  ),
                ),
              )
            : SizedBox(width: 0, height: 0),
      ],
    );
  }
}
