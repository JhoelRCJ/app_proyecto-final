import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputElement extends StatefulWidget {
  final String placeholder;
  final Color accentColor;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets margin;
  final BorderRadius cornerradius;
  final TextInputType inputType;
  final Icon? prefixicon;
  final Widget? suffixicon;
  final int maxLength;
  final Iterable? validator;
  final TextEditingController controller;
  final int maxline;

  const InputElement(
      {required this.placeholder,
      required this.accentColor,
      required this.textColor,
      required this.backgroundColor,
      this.margin = const EdgeInsets.all(5),
      required this.cornerradius,
      this.inputType = TextInputType.text,
      this.prefixicon,
      this.suffixicon = null,
      this.maxLength = 30,
      this.validator,
      required this.controller,
      this.maxline = 1});
  @override
  State<InputElement> createState() => _InputElementState();
}

class _InputElementState extends State<InputElement> {
  String validatemessage = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5.0),
      child: TextFormField(
        controller: widget.controller,
        onChanged: (text) {
          if (text.length <= widget.maxLength) {
            widget.controller.text = text;
          } else {
            validatemessage = "Maxlength Error";
          }
        },
        validator: (val) {
          if (val!.isEmpty) {
            return 'Enter your team\'s short name';
          } else if (val.length <= widget.maxLength &&
              val.length >= widget.maxLength) {
            return 'Must be at least ' +
                widget.maxLength.toString() +
                ' characters';
          }
          return null;
        },
        maxLength: widget.maxLength,
        maxLines: widget.maxline,
        inputFormatters: widget.inputType == TextInputType.phone
            ? <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r"^\+?0[0-9]{10}$")),
                TextInputFormatter.withFunction(
                  (oldValue, newValue) => newValue.copyWith(
                      // text: newValue.text.replaceAll('.', ','),
                      ),
                ),
              ]
            : null,
        keyboardType: widget.inputType,
        obscureText:
            widget.inputType == TextInputType.visiblePassword ? true : false,
        decoration: InputDecoration(
          hintText: widget.placeholder,
          fillColor: widget.backgroundColor,
          prefixIcon: widget.prefixicon ?? SizedBox(width: 0, height: 0),
          contentPadding: EdgeInsets.all(5),
          // suffixIcon: widget.suffixicon !=null ?? Icon(Icons.dangerous),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: widget.accentColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: widget.textColor,
              width: 1.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
