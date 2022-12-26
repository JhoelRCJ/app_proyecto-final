import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class About extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        title: "pagenames.about".tr,
      ),
      backgroundColor: lightbgwhiteColor,
      body: new LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                  minWidth: viewportConstraints.maxWidth),
              child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 25),
                  decoration: BoxDecoration(
                    color: Color(0xff66AFA3).withOpacity(0.2),
                    borderRadius: new BorderRadius.vertical(
                      top: Radius.elliptical(150, 30),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 150,
                            child: ImageClass(
                              url: "assets/images/stoodylogo.png",
                              type: false,
                              boxfit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextClass(
                            text:
                                """ Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. """,
                            color: lightbgdarkColor,
                            size: normaltextSize,
                            weight: FontWeight.w400,
                            align: TextAlign.justify,
                            textOverflow: TextOverflow.fade,
                            maxline: 20,
                          ),
                        ],
                      ),
                    ),
                  ))),
        );
      }),
    );
  }
}
