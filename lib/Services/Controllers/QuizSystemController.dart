import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizSystemController extends GetxController {
  RxInt questionnumber = 1.obs;
  var pageController = PageController();
  RxInt currentIndex = 0.obs;
  RxInt questions = 5.obs;

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

  void next() {
    currentIndex.value++;
    questionnumber.value++;
    pageController.animateToPage(currentIndex.value,
        duration: Duration(milliseconds: 300), curve: Curves.easeInSine);
    ;
  }

  void previous() {
    currentIndex.value--;
    questionnumber.value--;
    pageController.animateToPage(currentIndex.value,
        duration: Duration(milliseconds: 300), curve: Curves.easeInSine);
    ;
  }

  void finish() {
    Get.toNamed("quizresult", arguments: [
      {"result": 90}
    ]);
  }
}
