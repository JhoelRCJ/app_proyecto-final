import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/PageComponents/RatingElements.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';

class ProductElement extends StatelessWidget {
  final String image;
  final String name;
  final String slug;
  final double rating;
  final String creatorusername;
  final String? actionprice;
  final String price;
  final String currency;
  final Function addtoCart;
  final double height;

  const ProductElement({
    required this.image,
    required this.name,
    required this.slug,
    required this.rating,
    required this.creatorusername,
    this.actionprice,
    required this.price,
    this.currency = "AZN",
    required this.addtoCart,
    this.height = 210,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('coursebuy', arguments: [
        {'slug', slug}
      ]),
      child: Container(
        height: height,
        width: 170,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: lightbgdarkColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height - 120,
              width: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 3.0, left: 6, right: 5, bottom: 5),
                      child: SizedBox(
                        height: height - 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextClass(
                                text: name,
                                weight: FontWeight.bold,
                                size: normaltextSize,
                                color: productnameColor),
                            StarRating(
                              rating: rating,
                            ),
                            TextClass(
                              text: creatorusername,
                              color: Colors.white60,
                              size: smalltextSize,
                              weight: FontWeight.w400,
                              align: TextAlign.left,
                            ),
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
                                          decoration:
                                              TextDecoration.lineThrough,
                                        )
                                      ],
                                    )
                                  : TextClass(
                                      text: convertCurrency(currency) +
                                          price.toString(),
                                      color: lightbgwhiteColor,
                                      size: normaltextSize,
                                      weight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    addtoCart();
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 45, right: 7),
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: lightbgwhiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: Icon(FontAwesomeIcons.cartPlus,
                        color: Colors.red, size: addtobasketSize),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
