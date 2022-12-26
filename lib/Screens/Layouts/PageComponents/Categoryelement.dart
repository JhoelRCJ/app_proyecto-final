import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';

class CategoryElement extends StatelessWidget {
  final String color;
  final String name;
  final String icon;
  final String slug;

  const CategoryElement(
      {required this.color,
      required this.name,
      required this.icon,
      required this.slug});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: GestureDetector(
        onTap: (() => Get.toNamed('category', arguments: [
              {'slug': slug}
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(65),
                color: HexColor.fromHex(color),
              ),
              alignment: Alignment.center,
              child: SizedBox(
                child:
                    ImageClass(type: true, boxfit: BoxFit.contain, url: icon),
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(height: 3),
            TextClass(
              text: name,
              weight: FontWeight.w700,
              size: smalltextSize,
              color: lightbgdarkColor,
              align: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
