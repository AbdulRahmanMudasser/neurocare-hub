import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  TextEditingController signupNameController = TextEditingController();
  TextEditingController signupEmailController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();

  // method to validate email text field
  String? validateEmailTextField(String? value) {
    if (value!.isEmpty) {
      return "Please enter valid Email";
    }

    return null;
  }

  // method to validate password text field
  String? validatePasswordTextField(String? value) {
    if (value!.isEmpty) {
      return "Please enter correct Password";
    }

    return null;
  }

  // method to validate password text field
  String? validateNameTextField(String? value) {
    if (value!.isEmpty) {
      return "Please enter a Name";
    }

    return null;
  }

  // navigate to sign up page
  navigateToSignUpPage() {
    return Get.toNamed("/signup");
  }

  // navigate to login page
  navigateToLoginPage() {
    return Get.toNamed("/login");
  }
}
