import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:stoody/Screens/Auth/Login.dart';
import 'package:stoody/Screens/Layouts/ChangeLocale.dart';
import 'package:stoody/Screens/Layouts/ImageClass.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

class Tutorialpages extends StatefulWidget {
  // const Tutorialpages({super.key});
  @override
  State<Tutorialpages> createState() => _TutorialpagesState();
}

class _TutorialpagesState extends State<Tutorialpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 200,
                  height: 50,
                  child: Center(child: ChangeLocale()),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                child: IntroductionScreen(
                  pages: [
                    PageViewModel(
                      title: "Fractional shares",
                      body:
                          "Instead of having to buy an entire share, invest any amount you want.",
                      image: ImageClass(
                          url:
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
                          type: true),
                    ),
                    PageViewModel(
                      title: "Fractional shares",
                      body:
                          "Instead of having to buy an entire share, invest any amount you want.",
                      image: ImageClass(
                          url:
                              'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
                          type: true),
                    ),
                  ],
                  onDone: () {
                    // Navigate To Login
                    Get.to(Login());
                  },
                  showBackButton: false,
                  showSkipButton: false,
                  showNextButton: false,
                  showDoneButton: false,
                  dotsDecorator: DotsDecorator(
                      size: const Size.square(17.0),
                      activeSize: const Size(17.0, 17.0),
                      activeColor: Colors.grey,
                      color: Colors.grey.shade400,
                      spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0))),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: lightbgdarkColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () => Get.toNamed('home'),
                child: TextClass(
                  text: "browse".tr,
                  weight: FontWeight.normal,
                  size: 17,
                  color: lightbgwhiteColor,
                ),
              ),
              MaterialButton(
                onPressed: () => Get.to(Login()),
                child: TextClass(
                  text: "login".tr,
                  weight: FontWeight.normal,
                  size: 17,
                  color: lightbgwhiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
