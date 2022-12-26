import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Auth/Login.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class Register extends StatefulWidget {
  // const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phonenumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(back: true),
      backgroundColor: lightbgwhiteColor,
      body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Container(
                padding: EdgeInsets.only(top: 30, bottom: 25),
                decoration: BoxDecoration(
                  color: Color(0xff66AFA3).withOpacity(0.2),
                  borderRadius: new BorderRadius.vertical(
                    top: Radius.elliptical(150, 30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextClass(
                      text: "register".tr,
                      weight: FontWeight.bold,
                      size: subHeadingSize,
                      color: lightbgdarkColor,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextClass(
                      text: "createyouraccount".tr,
                      weight: FontWeight.bold,
                      size: normaltextSize,
                      color: lightbgdarkColor,
                      align: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 390,
                        child: Center(
                          child: Form(
                            key: _formKey,
                            child: Column(children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 40,
                                child: InputElement(
                                  placeholder: "forms.name".tr,
                                  accentColor: lightbggreenColor,
                                  textColor: lightbgdarkColor,
                                  backgroundColor: lightbgwhiteColor,
                                  cornerradius:
                                      BorderRadius.all(Radius.circular(5)),
                                  prefixicon: Icon(
                                    FeatherIcons.edit,
                                    color: lightbgdarkColor,
                                    size: 20,
                                  ),
                                  maxLength: 30,
                                  validator: ['required'],
                                  controller: _nameController,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 40,
                                child: InputElement(
                                  placeholder: "forms.email".tr,
                                  accentColor: lightbggreenColor,
                                  textColor: lightbgdarkColor,
                                  backgroundColor: lightbgwhiteColor,
                                  cornerradius:
                                      BorderRadius.all(Radius.circular(5)),
                                  prefixicon: Icon(
                                    FeatherIcons.mail,
                                    color: lightbgdarkColor,
                                    size: 20,
                                  ),
                                  maxLength: 25,
                                  validator: ['required', 'email'],
                                  controller: _emailController,
                                  inputType: TextInputType.emailAddress,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 40,
                                child: InputElement(
                                  placeholder: "+994 (xx) xxx xx xx",
                                  accentColor: lightbggreenColor,
                                  textColor: lightbgdarkColor,
                                  backgroundColor: lightbgwhiteColor,
                                  cornerradius:
                                      BorderRadius.all(Radius.circular(5)),
                                  prefixicon: Icon(
                                    FeatherIcons.phone,
                                    color: lightbgdarkColor,
                                    size: 20,
                                  ),
                                  maxLength: 13,
                                  validator: ['required', 'phone'],
                                  controller: _phonenumberController,
                                  inputType: TextInputType.phone,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 40,
                                child: InputElement(
                                    placeholder: "forms.password".tr,
                                    accentColor: lightbggreenColor,
                                    textColor: lightbgdarkColor,
                                    backgroundColor: lightbgwhiteColor,
                                    cornerradius:
                                        BorderRadius.all(Radius.circular(5)),
                                    prefixicon: Icon(
                                      FeatherIcons.lock,
                                      color: lightbgdarkColor,
                                      size: 20,
                                    ),
                                    maxLength: 13,
                                    validator: ['required', 'pass'],
                                    controller: _passwordController,
                                    inputType: TextInputType.visiblePassword),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 40,
                                child: InputElement(
                                    placeholder:
                                        "forms.password_confirmation".tr,
                                    accentColor: lightbggreenColor,
                                    textColor: lightbgdarkColor,
                                    backgroundColor: lightbgwhiteColor,
                                    cornerradius:
                                        BorderRadius.all(Radius.circular(5)),
                                    prefixicon: Icon(
                                      FeatherIcons.lock,
                                      color: lightbgdarkColor,
                                      size: 20,
                                    ),
                                    maxLength: 13,
                                    validator: ['required', 'pass'],
                                    controller: _passwordConfirmController,
                                    inputType: TextInputType.visiblePassword),
                              ),
                            ]),
                          ),
                        )),
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
                              text: "buttons.signup".tr,
                              weight: FontWeight.w400,
                              align: TextAlign.center),
                          animationDuration: Duration(milliseconds: 3),
                          color: lightbggreenColor,
                          padding: EdgeInsets.only(top: 18, bottom: 18),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 30,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextClass(
                                text: "alreadyhaveaccount".tr,
                                weight: FontWeight.bold,
                                size: smalltextSize,
                                color: lightbgdarkColor),
                            TextButton(
                                onPressed: () => Get.to(Login()),
                                child: TextClass(
                                    text: "login".tr,
                                    weight: FontWeight.bold,
                                    size: smalltextSize,
                                    color: lightbggreenColor))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
