import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class QuizQuestion extends StatefulWidget {
  final String keyElement;
  final String valueElement;

  const QuizQuestion({
    required this.keyElement,
    required this.valueElement,
  });

  @override
  State<QuizQuestion> createState() => _QuizQuestionState();
}

class _QuizQuestionState extends State<QuizQuestion> {
  bool clicked = false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
        });
      },
      child: Center(
        child: Container(
            width: MediaQuery.of(context).size.width - 50,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: clicked == true ? successColor : Color(0xffD4E958),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextClass(
                      color: lightbgwhiteColor,
                      size: normaltextSize,
                      weight: FontWeight.w600,
                      align: TextAlign.left,
                      maxline: 5,
                      textOverflow: TextOverflow.clip,
                      text: widget.keyElement.toUpperCase() +
                          ") " +
                          widget.valueElement),
                ),
                clicked == true
                    ? Icon(
                        FontAwesomeIcons.check,
                        color: lightbgwhiteColor,
                        size: buttontextSize,
                      )
                    : Icon(
                        FontAwesomeIcons.chevronRight,
                        color: lightbgwhiteColor,
                        size: buttontextSize,
                      )
              ],
            )),
      ),
    );
  }
}
