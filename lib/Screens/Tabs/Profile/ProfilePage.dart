import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/ListElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: false,
        share: true,
        sharetitle: "pagenames.profile".tr,
        shareurl: "https://stoody.weblabs.az/en/business",
      ),
      body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: 210,
                      width: MediaQuery.of(context).size.width - 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.white, spreadRadius: 1),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: ImageClass(
                                url:
                                    'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=',
                                type: true,
                                boxfit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextClass(
                              text: "Profile Name",
                              weight: FontWeight.bold,
                              size: pagetitleSize,
                              color: lightbgdarkColor),
                          SizedBox(
                            height: 5,
                          ),
                          TextButton(
                            child: TextClass(
                                text: "buttons.becomeateacher".tr,
                                weight: FontWeight.bold,
                                size: smalltextSize,
                                color: lightbggreenColor),
                            onPressed: () =>
                                launchUrlHelper("https://google.com"),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 80),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListElement(
                            title: "buttons.add".tr,
                            iconleft: Icon(FeatherIcons.plus),
                            page: 'addpage'),
                        ListElement(
                            title: "pagenames.balance".tr,
                            iconleft: Icon(FeatherIcons.heart),
                            page: 'balance'),
                        ListElement(
                            title: "pagenames.myaccount".tr,
                            iconleft: Icon(FeatherIcons.user),
                            page: 'myaccount'),
                        ListElement(
                            title: "myforums".tr,
                            iconleft: Icon(FeatherIcons.list),
                            page: 'myforums'),
                        ListElement(
                            title: "myblogs".tr,
                            iconleft: Icon(FeatherIcons.edit3),
                            page: 'myblogs'),
                        ListElement(
                            title: "mycourses".tr,
                            iconleft: Icon(FeatherIcons.video),
                            page: 'mylessons'),
                        ListElement(
                            title: "myquizes".tr,
                            iconleft: Icon(FeatherIcons.helpCircle),
                            page: 'orderedquiz'),
                        ListElement(
                            title: "pagenames.about".tr,
                            iconleft: Icon(FeatherIcons.info),
                            page: 'about'),
                        ListElement(
                          title: "buttons.logout".tr,
                          iconleft: Icon(FeatherIcons.logOut),
                          func: () => print("A"),
                          pageorfunc: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
