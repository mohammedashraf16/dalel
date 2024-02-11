import 'package:dalel/core/utlis/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final pacifico400Style64 = TextStyle(
      color: AppColors.deebBrown,
      fontSize: 64,
      fontWeight: FontWeight.w400,
      fontFamily: "Pacifico");
  static final poppins500Style24 = TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins");

  static final poppins300Style16 = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: "Poppins",
  );
}
