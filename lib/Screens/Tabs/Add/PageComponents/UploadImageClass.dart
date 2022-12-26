import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class UploadImageClass extends StatefulWidget {
  final String text;
  final Function upload;
  final String? image;

  const UploadImageClass(
      {required this.text, required this.upload, this.image});

  State<UploadImageClass> createState() => _UploadImageClassState();
}

class _UploadImageClassState extends State<UploadImageClass> {
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.upload();
      },
      child: widget.image != null
          ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(widget.image!),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    onError: ((exception, stackTrace) => print(exception))),
                border: Border.all(
                  color: lightbgwhiteColor,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Positioned(
                      top: 10,
                      left: 10,
                      child: TextClass(
                        color: lightbgwhiteColor,
                        size: normalSmalltextSize,
                        text: widget.text,
                        weight: FontWeight.bold,
                        align: TextAlign.left,
                      )),
                  Positioned(
                      child: Icon(
                    FeatherIcons.plusCircle,
                    color: lightbgwhiteColor,
                    size: headingSize,
                  ))
                ],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                color: lightbggreenColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: lightbgwhiteColor,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Positioned(
                      top: 10,
                      left: 10,
                      child: TextClass(
                        color: lightbgwhiteColor,
                        size: normalSmalltextSize,
                        text: widget.text,
                        weight: FontWeight.bold,
                        align: TextAlign.left,
                      )),
                  Positioned(
                      child: Icon(
                    FeatherIcons.plusCircle,
                    color: lightbgwhiteColor,
                    size: headingSize,
                  ))
                ],
              ),
            ),
    );
  }
}
