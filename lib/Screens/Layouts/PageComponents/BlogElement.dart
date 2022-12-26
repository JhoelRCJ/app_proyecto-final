import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class BlogElement extends StatelessWidget {
  final String name;
  final String slug;
  final String creatorusername;
  final String creatorprofileimage;
  final String categoryname;
  final int viewcount;
  final int commentcount;
  final String generalImage;

  const BlogElement({
    required this.name,
    required this.slug,
    required this.creatorusername,
    required this.creatorprofileimage,
    required this.categoryname,
    required this.viewcount,
    required this.commentcount,
    required this.generalImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('blog', arguments: [
        {'slug', slug}
      ]),
      child: Container(
        height: 190,
        width: 190,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
              creatorprofileimage,
            ),
            alignment: Alignment.center,
            fit: BoxFit.cover,
            opacity: 0.9,
          ),
          backgroundBlendMode: BlendMode.darken,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15.0, left: 10, right: 10, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            ),
                            border:
                                Border.all(width: 1, color: lightbgwhiteColor)),
                      ),
                      Container(
                        width: 95,
                        child: new TextClass(
                          text: creatorusername,
                          color: lightbgwhiteColor,
                          size: smalltextSize,
                          weight: FontWeight.w400,
                          align: TextAlign.left,
                          textOverflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    child: MaterialButton(
                      onPressed: () async {
                        if (slug != null)
                          await Share.share(slug, subject: name);
                      },
                      child: Icon(FeatherIcons.share2,
                          size: normaltextSize, color: lightbgwhiteColor),
                      animationDuration: Duration(milliseconds: 3),
                      color: null,
                      padding: EdgeInsets.only(top: 1, bottom: 1),
                    ),
                  ),
                ],
              ),
              TextClass(
                  text: name,
                  weight: FontWeight.bold,
                  size: normaltextSize,
                  color: lightbgwhiteColor),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
      ),
    );
  }
}
