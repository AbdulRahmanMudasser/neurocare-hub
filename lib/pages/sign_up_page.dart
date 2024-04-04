import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neuro_care_hub_app/controllers/authentication_controller.dart';
import 'package:neuro_care_hub_app/utils/extensions/size_extension.dart';
import 'package:neuro_care_hub_app/utils/styles/text_styles.dart';

import '../utils/widgets/authentication pages/switch_authentication_page_row.dart';
import '../utils/widgets/reusable widgets/reusable_button.dart';
import '../utils/widgets/reusable widgets/text_form_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

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
            // scale: double.maxFinite,
            image: AssetImage(
              "assets/images/background-1.jpg",
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.0.wp, vertical: 4.0.hp),
          child: Column(
            children: [
              SizedBox(
                height: 15.0.hp,
              ),

              // login text
              Text(
                "Sign Up",
                style: TextStyles.boldDarkLargeTextStyle().copyWith(
                  fontSize: 30.0.sp,
                  color: Colors.white,
                ),
              ),

              SizedBox(
                height: 10.0.hp,
              ),

              // text field name
              ReusableTextFormField(
                controller: authenticationController.signupNameController,
                hintText: 'Name',
                icon: Icons.person_outline,
                validator: (value) => authenticationController.validateEmailTextField(value),
                keyboardType: TextInputType.text,
                obscureText: false,
              ),

              SizedBox(
                height: 2.0.hp,
              ),

              // text field email
              ReusableTextFormField(
                controller: authenticationController.signupEmailController,
                hintText: 'Email',
                icon: Icons.email_outlined,
                validator: (value) => authenticationController.validateEmailTextField(value),
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
              ),

              SizedBox(
                height: 2.0.hp,
              ),

              // text field password
              ReusableTextFormField(
                controller: authenticationController.signupPasswordController,
                hintText: 'Password',
                icon: Icons.password_outlined,
                validator: (value) => authenticationController.validatePasswordTextField(value),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),

              SizedBox(
                height: 5.0.hp,
              ),

              ReusableButton(
                onTap: () {},
                text: "Sign Up",
              ),

              SizedBox(
                height: 5.0.hp,
              ),

              SwitchAuthenticationPageRow(
                firstText: "Already Have An Account?",
                secondText: "Login",
                onTap: () => authenticationController.navigateToLoginPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
