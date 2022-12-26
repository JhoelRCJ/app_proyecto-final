import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ListRowElementForData.dart';
import 'package:stoody/Services/ThemeService.dart';

// model
import 'package:stoody/models/user.dart';

class MyBlogs extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        title: "myblogs".tr,
        profile: true,
      ),
      backgroundColor: lightbgwhiteColor,
      body: Container(
        padding: EdgeInsets.only(top: 10, bottom: 25),
        // width: MediaQuery.of(context).size.width - 50,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            Center(
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                  itemBuilder: (context, i) {
                    return ListRowElementForData(
                        nameofpage: "blog",
                        slug: "blog-name",
                        name: "Məlumatları necə yükləmək lazımdır?",
                        date: "07.06.2000",
                        image:
                            "https://thumbs.dreamstime.com/b/blog-information-website-concept-workplace-background-text-view-above-127465079.jpg");
                  },
                ),
                height: 100,
                width: MediaQuery.of(context).size.width - 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
