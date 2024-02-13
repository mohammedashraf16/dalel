import 'package:dalel/core/utlis/app_color.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(TextSpan(children: [
        TextSpan(style: CustomTextStyles.Poppins400Style12, text: text1),
        TextSpan(
          style: CustomTextStyles.Poppins400Style12.copyWith(
            color: AppColors.lightGrey,
          ),
          text: text2,
        ),
      ])),
    );
  }
}
