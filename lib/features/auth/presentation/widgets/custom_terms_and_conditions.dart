import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndConditionWidget extends StatelessWidget {
  const TermsAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomeCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                style: CustomTextStyles.Poppins400Style12,
                text: AppStrings.iHaveAgreeToOur,
              ),
              TextSpan(
                style: CustomTextStyles.Poppins400Style12.copyWith(
                  decoration: TextDecoration.underline,
                ),
                text: AppStrings.termsAndCondition,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
