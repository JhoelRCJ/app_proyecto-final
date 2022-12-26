import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class MyElementsForProfile extends StatefulWidget {
  final String image;
  final String name;
  final String category;
  final String slug;
  final String page;
  final double rating;

  const MyElementsForProfile({
    required this.image,
    required this.name,
    required this.category,
    required this.slug,
    required this.page,
    this.rating = 5,
  });

  @override
  State<MyElementsForProfile> createState() => _MyElementsForProfileState();
}

class _MyElementsForProfileState extends State<MyElementsForProfile> {
  bool clicked = false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(widget.page, arguments: [
          {'slug': widget.slug}
        ]);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(widget.image),
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                )),
                width: 100,
                height: 100,
                margin: EdgeInsets.only(right: 5)),
            Container(
              width: MediaQuery.of(context).size.width - 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextClass(
                      text: widget.name,
                      weight: FontWeight.bold,
                      size: normaltextSize,
                      color: lightbgdarkColor,
                      maxline: 4),
                  SizedBox(
                    height: 10,
                  ),
                  TextClass(
                      text: widget.category,
                      weight: FontWeight.bold,
                      size: smalltextSize,
                      color: Colors.grey.shade600),
                  SizedBox(
                    height: 10,
                  ),
                  StarRating(rating: widget.rating),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
