import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class AddPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        title: "buttons.add".tr,
      ),
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
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Center(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       GestureDetector(
                        //         onTap: () {},
                        //         child: Container(
                        //           width:
                        //               (MediaQuery.of(context).size.width - 50) /
                        //                   2,
                        //           height:
                        //               (MediaQuery.of(context).size.width - 50) /
                        //                   2,
                        //           decoration: BoxDecoration(
                        //               border: Border.all(
                        //                   color: lightbgdarkColor,
                        //                   width: 1,
                        //                   style: BorderStyle.solid),
                        //               borderRadius: BorderRadius.circular(10)),
                        //           child: Column(
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.center,
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             children: [
                        //               Icon(
                        //                 FeatherIcons.video,
                        //                 size: subHeadingSize,
                        //                 color: lightbgdarkColor,
                        //               ),
                        //               SizedBox(
                        //                 height: 10,
                        //               ),
                        //               TextClass(
                        //                 text: "Course",
                        //                 weight: FontWeight.bold,
                        //                 size: normaltextSize,
                        //                 color: lightbgdarkColor,
                        //                 align: TextAlign.center,
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //       GestureDetector(
                        //         onTap: () {},
                        //         child: Container(
                        //           width:
                        //               (MediaQuery.of(context).size.width - 50) /
                        //                   2,
                        //           height:
                        //               (MediaQuery.of(context).size.width - 50) /
                        //                   2,
                        //           decoration: BoxDecoration(
                        //               border: Border.all(
                        //                   color: lightbgdarkColor,
                        //                   width: 1,
                        //                   style: BorderStyle.solid),
                        //               borderRadius: BorderRadius.circular(10)),
                        //           child: Column(
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.center,
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             children: [
                        //               Icon(
                        //                 FeatherIcons.helpCircle,
                        //                 size: subHeadingSize,
                        //                 color: lightbgdarkColor,
                        //               ),
                        //               SizedBox(
                        //                 height: 10,
                        //               ),
                        //               TextClass(
                        //                 text: "Quiz",
                        //                 weight: FontWeight.bold,
                        //                 size: normaltextSize,
                        //                 color: lightbgdarkColor,
                        //                 align: TextAlign.center,
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 15,
                        // ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('addblog');
                                },
                                child: Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  height:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: lightbgdarkColor,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FeatherIcons.edit,
                                        size: subHeadingSize,
                                        color: lightbgdarkColor,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextClass(
                                        text: "blog".tr,
                                        weight: FontWeight.bold,
                                        size: normaltextSize,
                                        color: lightbgdarkColor,
                                        align: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('addforum');
                                },
                                child: Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  height:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: lightbgdarkColor,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FeatherIcons.alertCircle,
                                        size: subHeadingSize,
                                        color: lightbgdarkColor,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextClass(
                                        text: "forum".tr,
                                        weight: FontWeight.bold,
                                        size: normaltextSize,
                                        color: lightbgdarkColor,
                                        align: TextAlign.center,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      }),
    );
  }
}
