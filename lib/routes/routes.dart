import 'package:get/get.dart';
import 'package:neuro_care_hub_app/pages/about_page.dart';
import 'package:neuro_care_hub_app/pages/contact_us_page.dart';
import 'package:neuro_care_hub_app/pages/home_page.dart';
import 'package:neuro_care_hub_app/pages/sign_up_page.dart';
import 'package:neuro_care_hub_app/pages/splash_page.dart';
import 'package:neuro_care_hub_app/pages/test_page.dart';

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
    ),
    GetPage(
      name: SIGNUP,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: ABOUT,
      page: () => const AboutPage(),
    ),
    GetPage(
      name: HELP,
      page: () => HelpPage(),
    ),
    GetPage(
      name: TEST,
      page: () => TestPage(),
    ),
  ];
}
