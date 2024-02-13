import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class WelcomeTextWidgt extends StatelessWidget {
  const WelcomeTextWidgt({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.Poppins600Style28,
      ),
    );
  }
}
