import 'package:get/get.dart';
import 'package:stoody/Services/Additional/Helper.dart';
import 'package:stoody/Services/ThemeService.dart';
import 'package:stoody/models/category.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

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

  String price_count() {
    var totalprice = null;
    // ignore: unused_local_variable
    // var map = _products.map(
    //     (dynamic key, dynamic value) => totalprice = totalprice + value.price);
    _products.forEach((key, value) {
      print(key);
      print("vall");
      print(value);
      // totalprice += value.price.toString();
    });
    return totalprice;
  }

  get products => _products;
}
