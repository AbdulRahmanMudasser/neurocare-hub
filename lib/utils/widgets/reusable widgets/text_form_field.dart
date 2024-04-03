import 'package:flutter/material.dart';

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
  });

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.boldDarkMediumTextStyle(),
      controller: controller,
      maxLines: 1,
      obscureText: true,
      minLines: 1,
      cursorColor: Colors.transparent,
      cursorErrorColor: Colors.transparent,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyles.boldDarkMediumTextStyle(),
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