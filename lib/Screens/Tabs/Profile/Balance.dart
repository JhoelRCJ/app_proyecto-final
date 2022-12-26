import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/PageComponents/ListRowElementForData.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Services/ThemeService.dart';

// model
import 'package:stoody/models/user.dart';

class Balance extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        back: true,
        title: "pagenames.balance".tr,
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
            SizedBox(height: 10),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: TextClass(
                          text: "₼5",
                          weight: FontWeight.w500,
                          size: normaltextSize,
                          color: lightbgdarkColor),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(right: 25),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/stoodylogo.png",
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                          opacity: 0.9,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
                  itemBuilder: (context, i) {
                    return ListRowElementForData(
                        nameofpage: "profile",
                        slug: "eyvaz-ceferov",
                        name: "Eyvaz Ceferov",
                        image:
                            "https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?s=612x612&w=0&k=20&c=kPvoBm6qCYzQXMAn9JUtqLREXe9-PlZyMl9i-ibaVuY=",
                        reason: "Referal code",
                        date: "07.06.2000",
                        price: 1,
                        currency: "₼");
                  },
                ),
                height: 80,
                width: MediaQuery.of(context).size.width - 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
