import 'package:get/get.dart';
import 'package:stoody/Services/Controllers/BasketController.dart';

class BasketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasketController>(
      () => BasketController(),
    );
  }
}
