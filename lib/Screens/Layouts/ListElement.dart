import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class ListElement extends StatefulWidget {
  final String title;
  final Icon iconleft;
  final bool pageorfunc;
  final String? page;
  final Function? func;

  const ListElement(
      {required this.title,
      required this.iconleft,
      this.pageorfunc = false,
      this.page = "about",
      this.func});
  State<ListElement> createState() => _ListElementState();
}

class _ListElementState extends State<ListElement> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      child: ListTile(
        onTap: () {
          setState(() {
            clicked = true;
          });
          widget.pageorfunc == true
              ? widget.func
              : Get.toNamed(widget.page.toString());
        },
        onLongPress: () {
          setState(() {
            clicked = true;
          });
        },
        style: ListTileStyle.list,
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        focusColor: lightbgwhiteColor,
        hoverColor: lightbgwhiteColor,
        iconColor: clicked == true ? lightbggreenColor : lightbgdarkColor,
        leading: widget.iconleft,
        minLeadingWidth: 20,
        tileColor: lightbgwhiteColor,
        textColor: clicked == true ? lightbggreenColor : lightbgdarkColor,
        title: TextClass(
          color: clicked == true ? lightbggreenColor : lightbgdarkColor,
          size: normaltextSize,
          weight: FontWeight.w600,
          text: widget.title,
          align: TextAlign.left,
        ),
        trailing: Wrap(
          spacing: 12, // space between two icons
          children: <Widget>[
            Icon(
              FontAwesomeIcons.chevronRight,
              size: normaltextSize,
            ), // icon-1
          ],
        ),
        shape: Border(
          bottom: BorderSide(
              color: clicked == true ? lightbggreenColor : Colors.grey.shade200,
              width: 2,
              style: BorderStyle.solid),
        ),
      ),
    );
  }
}
