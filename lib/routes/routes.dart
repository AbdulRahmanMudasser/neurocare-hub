import 'package:get/get.dart';
import 'package:neuro_care_hub_app/controllers/authentication_controller.dart';
import 'package:neuro_care_hub_app/pages/sign_up_page.dart';

import '../pages/login_page.dart';

class AppRoutes {
  static const INITIAL = '/';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const HOME = '/home';

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => SignUpPage(),
      binding: BindingsBuilder(() {
        Get.put(AuthenticationController());
      }),
    ),
    GetPage(
      name: LOGIN,
      page: () => LoginPage(),
      binding: BindingsBuilder(() {
        Get.put(AuthenticationController());
      }),
    ),
  ];
}
