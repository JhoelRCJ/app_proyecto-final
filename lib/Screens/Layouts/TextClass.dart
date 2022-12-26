import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;
  final Color color;
  final TextAlign align;
  final TextDecoration decoration;
  final TextOverflow textOverflow;
  final int maxline;

  const TextClass(
      {required this.text,
      required this.weight,
      required this.size,
      required this.color,
      this.align = TextAlign.left,
      this.decoration = TextDecoration.none,
      this.textOverflow = TextOverflow.ellipsis,
      this.maxline = 1});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          letterSpacing: 0.5,
          color: color,
          fontWeight: weight,
          fontSize: size,
          decoration: decoration,
          decorationColor: color,
          decorationStyle: TextDecorationStyle.solid,
        ),
        textAlign: align,
        overflow: textOverflow,
        maxLines: maxline,
        textDirection: TextDirection.ltr);
  }
}
