import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigate(context, "/forgotPassword");
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyles.Poppins600Style28.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
