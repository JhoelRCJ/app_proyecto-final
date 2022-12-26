import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasketController extends GetxController {
  var couponController = TextEditingController();
  var valueRadio = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void applyCoupon() {
    print("Apply");
  }

  void changeRadioData(value) {
    valueRadio = value;
  }
}
