import 'package:flutter/material.dart';
import 'package:neuro_care_hub_app/pages/login_page.dart';
import 'package:neuro_care_hub_app/utils/extensions/size_extension.dart';
import 'package:neuro_care_hub_app/utils/styles/text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background-2.jpg"),
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/splash-page-logo.png",
              height: 250,
              width: 265,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Brain Tumor Detection",
              style: TextStyles.boldDarkLargeTextStyle().copyWith(
                color: const Color(0xffE2F0FA),
                fontSize: 25.0.sp,
                fontFamily: '',
                fontWeight: FontWeight.w500,
                // fontStyle: FontStyle.italic
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
