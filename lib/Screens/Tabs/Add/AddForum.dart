import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Screens/Tabs/Add/PageComponents/UploadImageClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class AddForum extends StatefulWidget {
  State<AddForum> createState() => _AddForumState();
}

class _AddForumState extends State<AddForum> {
  var stat_alt_cat = false;
  var active_category = null;
  var sub_category = null;
  TextEditingController nameController = TextEditingController();
  String? mainImage;

  void selectTopCategory(index) {
    setState(() {
      active_category = index;
      stat_alt_cat = true;
    });
  }

  void selectSubCategory(index) {
    setState(() {
      sub_category = index;
    });
  }

  void imageUpload(imagetype) async {
    print("Upload");
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        if (imagetype == "main") {
          mainImage = pickedFile.path;
          print(mainImage);
        }
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        profile: false,
        title: "pagenames.addforum".tr,
      ),
      backgroundColor: lightbgwhiteColor,
      body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                  minWidth: viewportConstraints.maxWidth),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: TextClass(
                        color: lightbgdarkColor,
                        size: normalSmalltextSize,
                        text: "forms.select_category".tr,
                        weight: FontWeight.w500,
                        align: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 100,
                      child: GridView.count(
                        childAspectRatio: 5.0 / 1.8,
                        crossAxisCount: 2,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 10,
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                        scrollDirection: Axis.vertical,
                        children: List.generate(15, (index) {
                          return GestureDetector(
                            onTap: () {
                              selectTopCategory(index);
                            },
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                        color: active_category == index
                                            ? lightbggreenColor
                                            : Colors.grey.shade500,
                                        width: 1.5,
                                        style: BorderStyle.solid),
                                    color: lightbgwhiteColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.vaccines,
                                      color: active_category == index
                                          ? lightbggreenColor
                                          : lightbgdarkColor,
                                      size: normaltextSize,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          85,
                                      child: TextClass(
                                        text: "Category Nme",
                                        weight: FontWeight.bold,
                                        size: smalltextSize,
                                        color: active_category == index
                                            ? lightbggreenColor
                                            : lightbgdarkColor,
                                        align: TextAlign.left,
                                        maxline: 4,
                                      ),
                                    ),
                                  ],
                                )),
                          );
                        }),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  stat_alt_cat == true
                      ? Center(
                          child: Container(
                              width: MediaQuery.of(context).size.width - 50,
                              height: 120,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: lightbggreenColor,
                                    style: BorderStyle.solid,
                                    width: 1),
                              ),
                              child: GridView.count(
                                  childAspectRatio: 2.0 / 1,
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 8,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 8),
                                  scrollDirection: Axis.vertical,
                                  children: List.generate(15, (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        selectSubCategory(index);
                                      },
                                      child: TextClass(
                                        text: "Class $index",
                                        weight: FontWeight.w500,
                                        size: normalSmalltextSize,
                                        color: sub_category == index
                                            ? lightbggreenColor
                                            : lightbgdarkColor,
                                      ),
                                    );
                                  }))))
                      : SizedBox(width: 0, height: 0),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: InputElement(
                        accentColor: lightbggreenColor,
                        backgroundColor: lightbgwhiteColor,
                        cornerradius: BorderRadius.circular(10),
                        controller: nameController,
                        placeholder: "forms.name".tr,
                        textColor: lightbgdarkColor,
                        maxLength: 100,
                        prefixicon: Icon(FeatherIcons.alignJustify,
                            color: lightbgdarkColor, size: normaltextSize),
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 150,
                      child: InputElement(
                        accentColor: lightbggreenColor,
                        backgroundColor: lightbgwhiteColor,
                        cornerradius: BorderRadius.circular(10),
                        controller: nameController,
                        placeholder: "forms.description".tr,
                        textColor: lightbgdarkColor,
                        maxLength: 500,
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        maxline: 12,
                      ),
                    ),
                  ),
                  Center(
                      child: SizedBox(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 150,
                    child: UploadImageClass(
                      text: "forms.uploadmainimage".tr,
                      upload: () => imageUpload("main"),
                      image: mainImage,
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Material(
                        //Wrap with Material
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 18.0,
                        clipBehavior: Clip.antiAlias, // Add This
                        child: MaterialButton(
                          onPressed: () => print("A"),
                          child: TextClass(
                              color: lightbgwhiteColor,
                              size: buttontextSize,
                              text: "buttons.save".tr,
                              weight: FontWeight.w400,
                              align: TextAlign.center),
                          animationDuration: Duration(milliseconds: 3),
                          color: lightbgdarkColor,
                          padding: EdgeInsets.only(top: 18, bottom: 18),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
