import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // navigate to login page
  navigateToLoginPage() {
    return Get.toNamed("/login");
  }

  // navigate to about page
  navigateToAboutPage() {
    return Get.toNamed("/about");
  }

  // navigate to help page
  navigateToHelpPage() {
    return Get.toNamed("/help");
  }

  TextEditingController helpEmailController = TextEditingController();
  TextEditingController helpTitleController = TextEditingController();
  TextEditingController helpQueryController = TextEditingController();

  // method to validate email text field
  String? validateEmailTextField(String? value) {
    if (value!.isEmpty) {
      return "Please enter valid Email";
    }

    return null;
  }

  // method to validate title text field
  String? validateTitleTextField(String? value) {
    if (value!.isEmpty) {
      return "Please enter correct Title";
    }

    return null;
  }

  // method to validate query text field
  String? validateQueryTextField(String? value) {
    if (value!.isEmpty) {
      return "Please enter a Query";
    }

    return null;
  }

  @override
  void dispose() {
    helpEmailController.dispose();
    helpTitleController.dispose();
    helpQueryController.dispose();

    super.dispose();
  }
}