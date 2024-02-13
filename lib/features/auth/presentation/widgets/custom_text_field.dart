import 'package:dalel/core/utlis/app_color.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 24),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: CustomTextStyles.pacifico500Style18,
          border: getborderstyle(),
          enabledBorder: getborderstyle(),
          focusedBorder: getborderstyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getborderstyle() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.grey));
}
