import 'package:flutter/material.dart';
import 'package:neuro_care_hub_app/utils/extensions/size_extension.dart';

import '../../styles/text_field_borders_styles.dart';
import '../../styles/text_styles.dart';

class ReusableTextFormField extends StatelessWidget {
  const ReusableTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.validator,
    required this.keyboardType,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.boldDarkSmallTextStyle().copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 13.0.sp,
      ),
      controller: controller,
      maxLines: 1,
      obscureText: obscureText,
      minLines: 1,
      cursorColor: Colors.transparent,
      cursorErrorColor: Colors.transparent,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.symmetric(horizontal: 1.5.wp, vertical: 1.75.hp),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        alignLabelWithHint: true,
        enabled: true,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        hintText: hintText,
        hintStyle: TextStyles.boldDarkSmallTextStyle().copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 13.0.sp,
        ),
        prefixIcon: Icon(icon),
        fillColor: Colors.white,
        filled: true,
        border: TextFieldBorderStyles.border,
        disabledBorder: TextFieldBorderStyles.disableBorder,
        errorBorder: TextFieldBorderStyles.errorBorder,
        enabledBorder: TextFieldBorderStyles.enabledBorder,
        focusedBorder: TextFieldBorderStyles.focusedBorder,
        focusedErrorBorder: TextFieldBorderStyles.focusedErrorBorder,
        errorStyle: TextStyles.boldDarkMediumTextStyle().copyWith(color: Colors.red),
        errorMaxLines: 1,
      ),
    );
  }
}
