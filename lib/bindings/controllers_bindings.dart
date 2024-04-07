import 'package:get/get.dart';
import 'package:neuro_care_hub_app/controllers/authentication_controller.dart';
import 'package:neuro_care_hub_app/controllers/home_controller.dart';
import 'package:neuro_care_hub_app/controllers/test_page_controller.dart';

class ControllersBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthenticationController>(AuthenticationController());
    Get.put<HomeController>(HomeController(), permanent: true);
    Get.put<TestPageController>(TestPageController(), permanent: true);
  }
}