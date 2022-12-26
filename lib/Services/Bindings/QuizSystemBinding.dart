import 'package:get/get.dart';
import 'package:stoody/Services/Controllers/QuizSystemController.dart';

class QuizSystemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizSystemController>(
      () => QuizSystemController(),
    );
  }
}
