import 'package:get/get.dart';

class HomeController extends GetxController {
  // navigate to login page
  navigateToLoginPage() {
    return Get.toNamed("/login");
  }

  // navigate to home page
  navigateToHomePage() {
    return Get.toNamed("/home");
  }
}