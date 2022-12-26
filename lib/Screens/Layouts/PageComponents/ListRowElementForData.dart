import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class ListRowElementForData extends StatelessWidget {
  final String name;
  final String? image;
  final String? reason;
  final String date;
  final double? price;
  final String? currency;
  final String nameofpage;
  final String slug;

  const ListRowElementForData({
    required this.name,
    this.image,
    this.reason,
    required this.date,
    this.price,
    this.currency,
    required this.nameofpage,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(nameofpage, arguments: [
        {"slug": slug}
      ]),
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 100,
        margin: EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey, width: 1, style: BorderStyle.solid))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            image != null
                ? Container(
                    width: 80,
                    child: ImageClass(
                      url: image!,
                      type: true,
                      boxfit: BoxFit.cover,
                    ),
                  )
                : Container(width: 0, height: 0),
            Padding(
              padding: const EdgeInsets.only(top: 2, bottom: 2, left: 2),
              child: Container(
                  width: image != null
                      ? MediaQuery.of(context).size.width - 200
                      : MediaQuery.of(context).size.width - 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextClass(
                        text: name,
                        weight: FontWeight.bold,
                        size: pagetitleSize,
                        color: Colors.grey.shade700,
                        maxline: 2,
                      ),
                      TextClass(
                          text: reason ?? '',
                          weight: FontWeight.w500,
                          size: normaltextSize,
                          color: Colors.grey.shade500),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FeatherIcons.clock,
                            size: smalltextSize,
                            color: Colors.grey.shade700,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          TextClass(
                              text: date,
                              weight: FontWeight.w400,
                              size: smalltextSize,
                              color: Colors.grey.shade700)
                        ],
                      )
                    ],
                  )),
            ),
            price != null
                ? Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: TextClass(
                      size: subHeadingSize,
                      align: TextAlign.center,
                      weight: FontWeight.w400,
                      color: successColor,
                      text: currency! + price.toString(),
                    ))
                : Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: Icon(
                      FontAwesomeIcons.eye,
                      size: subHeadingSize,
                      color: lightbggreenColor,
                    )),
          ],
        ),
      ),
    );
  }
}
