import 'package:get/get.dart';
import 'package:stoody/Services/Controllers/WishlistController.dart';

class WishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WishlistController>(
      () => WishlistController(),
    );
  }
}
