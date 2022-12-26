import 'package:get/get.dart';
import 'package:stoody/Services/Controllers/CategoryPageController.dart';

class CategoryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryPageController>(
      () => CategoryPageController(),
    );
  }
}
