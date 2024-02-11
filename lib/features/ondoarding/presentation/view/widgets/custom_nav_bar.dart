import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class CusomNavBar extends StatelessWidget {
  const CusomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        AppStrings.skip,
        style: CustomTextStyles.poppins300Style16.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      alignment: Alignment.centerRight,
    );
  }
}
