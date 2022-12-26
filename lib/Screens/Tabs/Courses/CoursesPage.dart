import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class CoursesPage extends StatefulWidget {
  // const CoursesPage({super.key});
  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  TextEditingController searchController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(back: false, title: "mycourses".tr, basket: true),
      body: new LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 90,
                          child: InputElement(
                              placeholder: "forms.search".tr,
                              accentColor: lightbggreenColor,
                              textColor: lightbgdarkColor,
                              backgroundColor: lightbgwhiteColor,
                              cornerradius: BorderRadius.circular(10),
                              controller: searchController),
                        ),
                      ),
                      Center(
                          child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        height: MediaQuery.of(context).size.height - 100,
                        child: ListView.builder(
                            itemCount: 15,
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed("coursepage");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  alignment: Alignment.center,
                                  height: 90,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 80,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            alignment: Alignment.center,
                                            fit: BoxFit.cover,
                                            opacity: 1,
                                            image: NetworkImage(
                                                "https://thumbs.dreamstime.com/b/blog-information-website-concept-workplace-background-text-view-above-127465079.jpg"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                160,
                                        height: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 40,
                                              child: TextClass(
                                                text:
                                                    "React Native Sıfırdan Mobil uygulama geliştirme",
                                                weight: FontWeight.bold,
                                                size: normalSmalltextSize,
                                                color: lightbgdarkColor,
                                                maxline: 5,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            TextClass(
                                              text: "Eyvaz Ceferov",
                                              weight: FontWeight.bold,
                                              size: smalltextSize,
                                              color: Colors.grey.shade500,
                                              maxline: 1,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            GFProgressBar(
                                              percentage: 0.9,
                                              backgroundColor: Colors.black26,
                                              progressBarColor: GFColors.DANGER,
                                              alignment:
                                                  MainAxisAlignment.center,
                                              animation: true,
                                              animateFromLastPercentage: true,
                                              animationDuration: 5,
                                              margin: EdgeInsets.zero,
                                              type: GFProgressType.linear,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )),
                      SizedBox(
                        height: 35,
                      ),
                    ])),
          );
        },
      ),
    );
  }
}
