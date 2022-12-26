import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/ChangeLocale.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class MyAccount extends StatefulWidget {
  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final TextEditingController _nameController = TextEditingController();
  String lang = Get.locale.toString();
  File? imageFile;

  void imageUpload() async {
    print("Upload");
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
      print(imageFile);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        title: "pagenames.editprofile".tr,
      ),
      backgroundColor: lightbgwhiteColor,
      body: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                  minWidth: viewportConstraints.maxWidth),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 170,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  imageUpload();
                                },
                                child: SizedBox(
                                  height: 100,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    fit: StackFit.loose,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY='),
                                            alignment: Alignment.center,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Container(
                                            width: 40,
                                            height: 40,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: lightbggreenColor,
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Icon(
                                              FeatherIcons.edit,
                                              color: lightbgwhiteColor,
                                              size: subHeadingSize,
                                            )),
                                        bottom: 0,
                                        right: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextClass(
                                  text: "Name Surname",
                                  weight: FontWeight.w600,
                                  size: pagetitleSize,
                                  color: lightbgdarkColor),
                            ]),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InputElement(
                            accentColor: lightbggreenColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.circular(5),
                            placeholder: "forms.name".tr,
                            prefixicon: Icon(FeatherIcons.edit),
                            inputType: TextInputType.text,
                            textColor: lightbgdarkColor,
                            margin: EdgeInsets.only(bottom: 5),
                            maxLength: 30,
                            controller: _nameController,
                          ),
                          InputElement(
                            accentColor: lightbggreenColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.circular(5),
                            placeholder: "forms.email".tr,
                            prefixicon: Icon(FeatherIcons.mail),
                            inputType: TextInputType.emailAddress,
                            textColor: lightbgdarkColor,
                            margin: EdgeInsets.only(bottom: 5),
                            maxLength: 30,
                            controller: _nameController,
                          ),
                          InputElement(
                            accentColor: lightbggreenColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.circular(5),
                            placeholder: "forms.phone".tr,
                            prefixicon: Icon(FeatherIcons.phone),
                            inputType: TextInputType.phone,
                            textColor: lightbgdarkColor,
                            margin: EdgeInsets.only(bottom: 5),
                            maxLength: 30,
                            controller: _nameController,
                          ),
                          InputElement(
                            accentColor: lightbggreenColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.circular(5),
                            placeholder: "forms.currentpassword".tr,
                            prefixicon: Icon(FeatherIcons.lock),
                            inputType: TextInputType.visiblePassword,
                            textColor: lightbgdarkColor,
                            margin: EdgeInsets.only(bottom: 5),
                            maxLength: 30,
                            controller: _nameController,
                          ),
                          InputElement(
                            accentColor: lightbggreenColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.circular(5),
                            placeholder: "forms.newpassword".tr,
                            prefixicon: Icon(FeatherIcons.lock),
                            inputType: TextInputType.visiblePassword,
                            textColor: lightbgdarkColor,
                            margin: EdgeInsets.only(bottom: 5),
                            maxLength: 30,
                            controller: _nameController,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: ChangeLocale()),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
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
                                    text: "buttons.update".tr,
                                    weight: FontWeight.w400,
                                    align: TextAlign.center),
                                animationDuration: Duration(milliseconds: 3),
                                color: lightbggreenColor,
                                padding: EdgeInsets.only(top: 18, bottom: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        );
      }),
    );

    void showSnackBar(String message) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }
  }
}
