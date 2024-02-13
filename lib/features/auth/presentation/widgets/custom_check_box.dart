import 'package:dalel/core/utlis/app_color.dart';
import 'package:flutter/material.dart';

class CustomeCheckBox extends StatefulWidget {
  const CustomeCheckBox({super.key});

  @override
  State<CustomeCheckBox> createState() => _CustomeCheckBoxState();
}

class _CustomeCheckBoxState extends State<CustomeCheckBox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      value: value,
      side: BorderSide(color: AppColors.grey),
      onChanged: (newValue) {
        setState(() {
          value = newValue!;
        });
      },
    );
  }
}
