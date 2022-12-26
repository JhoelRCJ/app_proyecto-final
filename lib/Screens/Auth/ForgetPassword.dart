import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class ForgetPassword extends StatefulWidget {
  // const ForgetPassword({super.key});
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextClass(
                      text: "forgetpassword".tr,
                      weight: FontWeight.bold,
                      size: headingSize,
                      color: Color(0xff3B4C87),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextClass(
                      text: "getlinkandchangepass".tr,
                      weight: FontWeight.bold,
                      size: normaltextSize,
                      color: lightbgdarkColor,
                      align: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: 100,
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: InputElement(
                            placeholder: "forms.email".tr,
                            accentColor: lightbggreenColor,
                            textColor: lightbgdarkColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.all(Radius.circular(5)),
                            prefixicon: Icon(
                              FeatherIcons.mail,
                              color: lightbgdarkColor,
                              size: 20,
                            ),
                            maxLength: 13,
                            validator: ['required', 'email'],
                            controller: _emailController,
                            inputType: TextInputType.emailAddress,
                          ),
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
                        text: "buttons.resetpassword".tr,
                        weight: FontWeight.w400,
                        align: TextAlign.center),
                    animationDuration: Duration(milliseconds: 3),
                    color: lightbggreenColor,
                    padding: EdgeInsets.only(top: 18, bottom: 18),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
