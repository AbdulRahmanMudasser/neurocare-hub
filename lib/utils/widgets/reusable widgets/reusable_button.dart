import 'package:flutter/material.dart';
import 'package:neuro_care_hub_app/utils/extensions/size_extension.dart';

import '../../styles/text_styles.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    required this.onTap,
    required this.text,
    this.verticalPadding = 1.5,
    this.width = 50,
  });

  final String text;
  final GestureTapCallback onTap;
  final double verticalPadding;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 2.5.wp,
          vertical: double.parse("$verticalPadding").hp,
        ),
        width: double.parse("$width").wp,
        decoration: BoxDecoration(
          color: const Color(0xFFe7bdb2),
          borderRadius: BorderRadius.circular(5.0.wp),
        ),
        child: Text(
          text,
          style: TextStyles.boldDarkMediumTextStyle().copyWith(
            color: Colors.white,
            letterSpacing: 0.5,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
