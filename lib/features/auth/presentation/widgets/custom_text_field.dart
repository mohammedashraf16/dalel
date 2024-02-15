import 'package:dalel/core/utlis/app_color.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.obscureText,
    this.suffixIcon,
  });
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool? obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 24),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffixIcon,
          labelStyle: CustomTextStyles.Poppins500Style18,
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
