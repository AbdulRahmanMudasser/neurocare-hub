import 'package:get/get.dart';
import 'package:neuro_care_hub_app/controllers/authentication_controller.dart';
import 'package:neuro_care_hub_app/controllers/home_controller.dart';
import 'package:neuro_care_hub_app/pages/about_page.dart';
import 'package:neuro_care_hub_app/pages/home_page.dart';
import 'package:neuro_care_hub_app/pages/sign_up_page.dart';
import 'package:neuro_care_hub_app/pages/splash_page.dart';

import '../pages/login_page.dart';

class AppRoutes {
  static const INITIAL = '/';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const HOME = '/home';
  static const HELP = '/help';
  static const ABOUT = '/about';
  static const TEST = '/test';

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => const SplashPage(),
      binding: BindingsBuilder(() {
        Get.put(AuthenticationController());
      }),
    ),
    GetPage(
      name: SIGNUP,
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
    GetPage(
      name: HOME,
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),
    GetPage(
      name: ABOUT,
      page: () => const AboutPage(),
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),
  ];
}
