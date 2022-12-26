import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Auth/ForgetPassword.dart';
import 'package:stoody/Screens/Auth/Register.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/API/SendAndGet.dart';
import 'package:stoody/Services/API/UrlsAndConsts.dart';
import 'package:stoody/Services/ThemeService.dart';

class Login extends StatefulWidget {
  // const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {
    // postData(apibaseurl + "/" + authprefix + "/" + loginURL,
    //     {'email': _emailController.text, 'password': _passwordController.text});
    getData(apibaseurl + "/" + dataprefix + "/" + blogsURL);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: lightbgwhiteColor,
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextClass(
                        text: "helloagain".tr,
                        weight: FontWeight.bold,
                        size: headingSize,
                        color: Color(0xff3B4C87),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          child: TextClass(
                            text: "welcomebackdescription".tr,
                            weight: FontWeight.bold,
                            size: normaltextSize,
                            color: lightbgdarkColor,
                            align: TextAlign.center,
                            maxline: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 200,
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
                              cornerradius:
                                  BorderRadius.all(Radius.circular(5)),
                              prefixicon: Icon(
                                FeatherIcons.mail,
                                color: lightbgdarkColor,
                                size: 20,
                              ),
                              maxLength: 45,
                              validator: ['required', 'email'],
                              controller: _emailController,
                              inputType: TextInputType.emailAddress,
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
                                maxLength: 20,
                                validator: ['required', 'password'],
                                controller: _passwordController,
                                inputType: TextInputType.visiblePassword),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 50,
                            child: TextButton(
                                onPressed: () => Get.to(ForgetPassword()),
                                child: TextClass(
                                  color: lightbgdarkColor,
                                  text: "forgetpassword".tr,
                                  align: TextAlign.right,
                                  size: smalltextSize,
                                  weight: FontWeight.bold,
                                )),
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
                      onPressed: () => login(),
                      child: TextClass(
                          color: lightbgwhiteColor,
                          size: buttontextSize,
                          text: "buttons.signin".tr,
                          weight: FontWeight.w400,
                          align: TextAlign.center),
                      animationDuration: Duration(milliseconds: 3),
                      color: lightbggreenColor,
                      padding: EdgeInsets.only(top: 18, bottom: 18),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextClass(
                    text: "orloginwith".tr,
                    weight: FontWeight.w400,
                    size: normaltextSize,
                    color: lightbgdarkColor),
                SizedBox(
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          //Wrap with Material
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(
                                color: lightbgdarkColor,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          elevation: 4.0,
                          clipBehavior: Clip.antiAlias, // Add This
                          child: MaterialButton(
                            onPressed: () => print("Google"),
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: lightbgdarkColor,
                            ),
                            animationDuration: Duration(milliseconds: 3),
                            color: lightbgwhiteColor,
                            padding: EdgeInsets.only(top: 14, bottom: 18),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Material(
                          //Wrap with Material
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            side: BorderSide(
                                color: lightbgdarkColor,
                                width: 1,
                                style: BorderStyle.solid),
                          ),
                          elevation: 4.0,
                          clipBehavior: Clip.antiAlias, // Add This
                          child: MaterialButton(
                            onPressed: () => print("Facebook"),
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: lightbgdarkColor,
                            ),
                            animationDuration: Duration(milliseconds: 3),
                            color: lightbgwhiteColor,
                            padding: EdgeInsets.only(top: 18, bottom: 18),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 30,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextClass(
                            text: "notamember".tr,
                            weight: FontWeight.bold,
                            size: smalltextSize,
                            color: lightbgdarkColor),
                        TextButton(
                            onPressed: () => Get.to(Register()),
                            child: TextClass(
                                text: "register".tr,
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
      ),
    );
  }
}
