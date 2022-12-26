import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Tabs/Courses/CoursesPage.dart';
import 'package:stoody/Screens/Tabs/Home/HomePage.dart';
import 'package:stoody/Screens/Tabs/Profile/ProfilePage.dart';
import 'package:stoody/Screens/Tabs/Search/SearchPage.dart';
import 'package:stoody/Screens/Tabs/Wishlist/Wishlist.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  // const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;

  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    pageController.animateToPage(page,
        duration: Duration(milliseconds: 300), curve: Curves.easeInSine);
    ;
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        allowImplicitScrolling: true,
        controller: pageController,
        dragStartBehavior: DragStartBehavior.start,
        padEnds: true,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) => setState(() => currentIndex = index),
        children: [
          HomePage(),
          SearchPage(),
          // AddPage(),
          CoursesPage(),
          Wishlist(),
          ProfilePage(),
        ],
      ),
      extendBody: true,
      backgroundColor: lightbgwhiteColor,
      bottomNavigationBar: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: lightbgdarkColor,
          // elevation: 0,
          // enableFeedback: false,
          // selectedIconTheme: IconThemeData(color: lightbgwhiteColor),
          // unselectedIconTheme: IconThemeData(color: lightbgwhiteColor),
          // unselectedFontSize: bottombariconSize,
          unselectedItemColor: lightbgwhiteColor,
          // iconSize: bottombariconSize,
          currentIndex: currentIndex,
          selectedItemColor: lightbgwhiteColor,
          selectedLabelStyle: TextStyle(
            color: lightbgwhiteColor,
            fontSize: ultrasmalltextSize,
            overflow: TextOverflow.clip,
          ),
          unselectedLabelStyle: TextStyle(
            color: lightbgwhiteColor,
            fontSize: ultrasmalltextSize,
            overflow: TextOverflow.clip,
          ),
          onTap: onTap,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  width: MediaQuery.of(context).size.width / 4.9,
                  height: 35,
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.only(top: 7),
                  child: SvgPicture.asset(
                    currentIndex == 0
                        ? "assets/images/bottombaricons/icons8-star-filled.svg"
                        : "assets/images/bottombaricons/icons8-star.svg",
                    semanticsLabel: "pagenames.featured".tr,
                    color: Colors.white,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    placeholderBuilder: (BuildContext context) => Container(
                      width: 35,
                      height: 35,
                      child: Center(
                          child: const CircularProgressIndicator(
                        backgroundColor: lightbgdarkColor,
                        color: lightbgwhiteColor,
                      )),
                    ),
                  ),
                ),
                label: "pagenames.featured".tr,
                tooltip: "pagenames.featured".tr),
            BottomNavigationBarItem(
                icon: Container(
                  width: MediaQuery.of(context).size.width / 4.9,
                  height: 35,
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.only(top: 7),
                  child: SvgPicture.asset(
                    currentIndex == 1
                        ? "assets/images/bottombaricons/icons8-search-filled.svg"
                        : "assets/images/bottombaricons/icons8-search.svg",
                    semanticsLabel: "forms.search".tr,
                    color: Colors.white,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    placeholderBuilder: (BuildContext context) => Container(
                      width: 35,
                      height: 35,
                      child: Center(
                          child: const CircularProgressIndicator(
                        backgroundColor: lightbgdarkColor,
                        color: lightbgwhiteColor,
                      )),
                    ),
                  ),
                ),
                label: "forms.search".tr,
                tooltip: "forms.search".tr),
            BottomNavigationBarItem(
                icon: Container(
                  width: MediaQuery.of(context).size.width / 4.9,
                  height: 35,
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.only(top: 7),
                  child: SvgPicture.asset(
                    currentIndex == 2
                        ? "assets/images/bottombaricons/learning/playfilled.svg"
                        : "assets/images/bottombaricons/learning/play.svg",
                    semanticsLabel: "pagenames.mylearning".tr,
                    color: Colors.white,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    placeholderBuilder: (BuildContext context) => Container(
                      width: 35,
                      height: 35,
                      child: Center(
                          child: const CircularProgressIndicator(
                        backgroundColor: lightbgdarkColor,
                        color: lightbgwhiteColor,
                      )),
                    ),
                  ),
                ),
                label: "pagenames.mylearning".tr,
                tooltip: "pagenames.mylearning".tr),
            BottomNavigationBarItem(
                icon: Container(
                  width: MediaQuery.of(context).size.width / 4.9,
                  height: 35,
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.only(top: 7),
                  child: SvgPicture.asset(
                    currentIndex == 3
                        ? "assets/images/bottombaricons/icons8-wishlist-filled.svg"
                        : "assets/images/bottombaricons/icons8-wishlist.svg",
                    semanticsLabel: "pagenames.wishlist".tr,
                    color: Colors.white,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    placeholderBuilder: (BuildContext context) => Container(
                      width: 35,
                      height: 35,
                      child: Center(
                          child: const CircularProgressIndicator(
                        backgroundColor: lightbgdarkColor,
                        color: lightbgwhiteColor,
                      )),
                    ),
                  ),
                ),
                label: "pagenames.wishlist".tr,
                tooltip: "pagenames.wishlist".tr),
            BottomNavigationBarItem(
                icon: Container(
                  width: MediaQuery.of(context).size.width / 4.9,
                  height: 35,
                  padding: EdgeInsets.only(bottom: 7),
                  margin: EdgeInsets.only(top: 7),
                  child: SvgPicture.asset(
                    currentIndex == 4
                        ? "assets/images/bottombaricons/icons8-myaccount-filled.svg"
                        : "assets/images/bottombaricons/icons8-myaccount.svg",
                    semanticsLabel: "pagenames.myaccount".tr,
                    color: Colors.white,
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    placeholderBuilder: (BuildContext context) => Container(
                      width: 35,
                      height: 35,
                      child: Center(
                          child: const CircularProgressIndicator(
                        backgroundColor: lightbgdarkColor,
                        color: lightbgwhiteColor,
                      )),
                    ),
                  ),
                ),
                label: "pagenames.myaccount".tr,
                tooltip: "pagenames.myaccount".tr),
          ],
        ),
      ),
    );
  }
}
