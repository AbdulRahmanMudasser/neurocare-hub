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
}