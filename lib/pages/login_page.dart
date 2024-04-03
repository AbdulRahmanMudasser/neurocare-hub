import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neuro_care_hub_app/controllers/authentication_controller.dart';
import 'package:neuro_care_hub_app/utils/extensions/size_extension.dart';
import 'package:neuro_care_hub_app/utils/styles/text_styles.dart';
import 'package:neuro_care_hub_app/utils/widgets/reusable%20widgets/reusable_button.dart';

import '../utils/widgets/authentication pages/switch_authentication_page_row.dart';
import '../utils/widgets/reusable widgets/text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final AuthenticationController authenticationController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.white.withOpacity(0.9),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            scale: double.maxFinite,
            image: AssetImage(
              "assets/images/background_image_1.png",
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0.wp, vertical: 4.0.hp),
          child: Column(
            children: [
              SizedBox(
                height: 15.0.hp,
              ),

              // login text
              Text(
                "Login",
                style: TextStyles.boldDarkLargeTextStyle().copyWith(
                  fontSize: 30.0.sp,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10.0.hp,
              ),

              // text field email
              ReusableTextFormField(
                controller: authenticationController.loginEmailController,
                hintText: 'Email',
                icon: Icons.email_outlined,
                validator: (value) => authenticationController.validateEmailTextField(value),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(
                height: 1.5.hp,
              ),

              // text field password
              ReusableTextFormField(
                controller: authenticationController.loginPasswordController,
                hintText: 'Password',
                icon: Icons.password_outlined,
                validator: (value) => authenticationController.validatePasswordTextField(value),
                keyboardType: TextInputType.text,
              ),

              SizedBox(
                height: 5.0.hp,
              ),

              ReusableButton(
                onTap: () {},
                text: "Login",
              ),

              SizedBox(
                height: 5.0.hp,
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: SwitchAuthenticationPageRow(
                  firstText: "Don't Have An Account?",
                  secondText: "Sign Up",
                  onTap: () => authenticationController.navigateToSignUpPage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
