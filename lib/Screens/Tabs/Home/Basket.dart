import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:stoody/Screens/Layouts/AppBarWidget.dart';
import 'package:stoody/Screens/Layouts/InputElement.dart';
import 'package:stoody/Screens/Layouts/TextClass.dart';
import 'package:stoody/Screens/Tabs/Home/PageComponents/RadioElements.dart';
import 'package:stoody/Services/Additional/CartController.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/Controllers/BasketController.dart';
import 'package:stoody/Services/ThemeService.dart';

class Basket extends GetView<BasketController> {
  TextEditingController couponController = TextEditingController();
  final cartController = Get.put(CartController());

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgwhiteColor,
      appBar: AppBarWidget(
        back: true,
        title: "pagenames.basket".tr,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Obx(
            () => Center(
                child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: cartController.products.length > 0 ? 150 : 100,
              child: cartController.products.length > 0
                  ? ListView.builder(
                      itemCount: cartController.products.length,
                      itemBuilder: (context, i) {
                        var product = cartController.products.keys.toList()[i];
                        print(product);
                        return Container(
                          width: MediaQuery.of(context).size.width - 50,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: lightbgdarkColor,
                                  style: BorderStyle.solid,
                                  width: 1)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextClass(
                                      color: lightbgdarkColor,
                                      size: normalSmalltextSize,
                                      weight: FontWeight.bold,
                                      align: TextAlign.left,
                                      text: "Reading Greens and Making Putts",
                                      maxline: 2,
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextClass(
                                          color: lightbgdarkColor,
                                          size: smalltextSize,
                                          weight: FontWeight.w500,
                                          align: TextAlign.left,
                                          text: "Eyvaz Ceferov",
                                        ),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              TextClass(
                                                color: lightbgdarkColor,
                                                size: normaltextSize,
                                                weight: FontWeight.w700,
                                                align: TextAlign.left,
                                                text: convertCurrency("AZN") +
                                                    "19",
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              TextClass(
                                                color: Colors.grey.shade600,
                                                size: normalSmalltextSize,
                                                weight: FontWeight.w400,
                                                align: TextAlign.left,
                                                text: convertCurrency("AZN") +
                                                    "25",
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                            ]),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  cartController.deleteProduct(product);
                                  print(cartController.products);
                                },
                                child: Icon(FeatherIcons.trash,
                                    size: subHeadingSize, color: Colors.red),
                              )
                            ],
                          ),
                        );
                      })
                  : Center(
                      child: TextClass(
                          text: "messages.nullbasket".tr,
                          weight: FontWeight.bold,
                          size: subHeadingSize,
                          color: errorColor,
                          align: TextAlign.center),
                    ),
            )),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextClass(
                    color: lightbgdarkColor,
                    size: subHeadingSize,
                    weight: FontWeight.w700,
                    align: TextAlign.left,
                    text: "forms.usecouponcode".tr,
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 190,
                          child: InputElement(
                            placeholder: "forms.entercouponcode".tr,
                            accentColor: lightbggreenColor,
                            textColor: lightbgdarkColor,
                            backgroundColor: lightbgwhiteColor,
                            cornerradius: BorderRadius.circular(10),
                            controller: controller.couponController,
                            maxLength: 15,
                            prefixicon: Icon(FeatherIcons.percent,
                                color: lightbgdarkColor, size: normaltextSize),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 110,
                          child: Material(
                            //Wrap with Material
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            clipBehavior: Clip.antiAlias, // Add This
                            child: MaterialButton(
                              onPressed: () => controller.applyCoupon(),
                              child: TextClass(
                                  color: lightbgwhiteColor,
                                  size: buttontextSize,
                                  text: "buttons.apply".tr,
                                  weight: FontWeight.w400,
                                  align: TextAlign.center),
                              animationDuration: Duration(milliseconds: 3),
                              color: lightbggreenColor,
                              padding: EdgeInsets.only(top: 18, bottom: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
              child: Obx(
            () => Container(
              height: 130,
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width - 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextClass(
                    color: lightbgdarkColor,
                    size: subHeadingSize,
                    weight: FontWeight.w700,
                    align: TextAlign.left,
                    text: "paymenttype".tr,
                  ),
                  SizedBox(height: 10),
                  RadioElements<int>(
                    value: 1,
                    groupValue: controller.valueRadio.value,
                    leading: 'A',
                    title: TextClass(
                        text: "frombalance".tr,
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        weight: FontWeight.bold,
                        align: TextAlign.left),
                    onChanged: (value) {
                      // print(value);
                      controller.changeRadioData(value);
                    },
                  ),
                  RadioElements<int>(
                    value: 2,
                    groupValue: controller.valueRadio.value,
                    leading: 'B',
                    title: TextClass(
                        text: "viacardpayment".tr,
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        weight: FontWeight.bold,
                        align: TextAlign.left),
                    onChanged: (value) {
                      controller.changeRadioData(value);
                    },
                  ),
                ],
              ),
            ),
          )),
          Center(
              child: Obx(
            () => Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextClass(
                        text: "reactions.total".tr,
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        weight: FontWeight.w700,
                        align: TextAlign.left,
                      ),
                      TextClass(
                        text: cartController.price_count().toString(),
                        color: lightbgdarkColor,
                        size: normaltextSize,
                        weight: FontWeight.w500,
                        align: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
