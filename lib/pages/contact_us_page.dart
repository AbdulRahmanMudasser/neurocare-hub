import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neuro_care_hub_app/controllers/home_controller.dart';
import 'package:neuro_care_hub_app/utils/extensions/size_extension.dart';
import 'package:neuro_care_hub_app/utils/methods/alert_dialog.dart';
import 'package:neuro_care_hub_app/utils/styles/text_styles.dart';
import 'package:neuro_care_hub_app/utils/widgets/reusable%20widgets/reusable_button.dart';
import 'package:neuro_care_hub_app/utils/widgets/reusable%20widgets/text_form_field.dart';

class HelpPage extends StatelessWidget {
  HelpPage({super.key});

  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff664f9e),
        title: Text(
          "Contact Us",
          style: TextStyles.boldDarkLargeTextStyle().copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0.wp, vertical: 3.0.hp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Do you have questions or suggestions? Feel free to contact us below!",
              style: TextStyles.boldDarkSmallTextStyle().copyWith(fontWeight: FontWeight.w200),
              softWrap: true,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ReusableTextFormField(
              controller: homeController.helpEmailController,
              hintText: "Email",
              icon: null,
              validator: (value) => homeController.validateEmailTextField(value),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ReusableTextFormField(
              controller: homeController.helpTitleController,
              hintText: "Title",
              icon: null,
              validator: (value) => homeController.validateEmailTextField(value),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            ReusableTextFormField(
              controller: homeController.helpQueryController,
              hintText: "Message",
              icon: null,
              validator: (value) => homeController.validateEmailTextField(value),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              maxLines: 6,
            ),

            SizedBox(
              height: 10.0.hp,
            ),

            // send button
            Align(
              alignment: Alignment.center,
              child: ReusableButton(
                onTap: () => AlertDialogs.messageAlertDialog(
                  Icons.check_circle,
                  "Your Query Has Been Sent",
                ),
                text: "Send",
                color: const Color(0xff664f9e),
                verticalPadding: 1,
                width: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
