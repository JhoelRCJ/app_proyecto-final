import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:stoody/models/category.dart';

class WishlistController extends GetxController {
  var _products = {}.obs;

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

  void addProduct(Products product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    Get.snackbar("messages.added".tr,
        "You have added ${getDataForType(product.name, 'name')}",
        snackPosition: SnackPosition.BOTTOM,
        animationDuration: Duration(milliseconds: 1500),
        backgroundColor: lightbgwhiteColor,
        borderColor: lightbgdarkColor,
        borderWidth: 1,
        borderRadius: 15);
  }

  void deleteProduct(Products product) {
    if (_products.containsKey(product)) {
      _products.removeWhere((key, value) => key == product);
    }
  }

  get products => _products;
}
