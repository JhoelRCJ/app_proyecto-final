import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';

class QuizElement extends StatelessWidget {
  final String name;
  final String slug;
  final String creatorusername;
  final String creatorprofileimage;
  final String categoryname;
  final String? actionprice;
  final String price;
  final String currency;

  const QuizElement({
    required this.name,
    required this.slug,
    required this.creatorusername,
    required this.creatorprofileimage,
    required this.categoryname,
    this.actionprice,
    required this.price,
    this.currency = "AZN",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('quizbuy', arguments: [
        {'slug', slug}
      ]),
      child: Container(
        height: 170,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: actionprice != null
                        ? Row(
                            children: [
                              TextClass(
                                  text: convertCurrency(currency) +
                                      actionprice.toString(),
                                  color: lightbgwhiteColor,
                                  size: normaltextSize,
                                  weight: FontWeight.bold),
                              SizedBox(
                                width: 4,
                              ),
                              TextClass(
                                text: convertCurrency(currency) +
                                    price.toString(),
                                color: Colors.white60,
                                size: smalltextSize,
                                weight: FontWeight.w500,
                                decoration: TextDecoration.lineThrough,
                              )
                            ],
                          )
                        : TextClass(
                            text: convertCurrency(currency) + price.toString(),
                            color: lightbgwhiteColor,
                            size: normaltextSize,
                            weight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
