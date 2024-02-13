import 'package:dalel/core/utlis/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final pacifico400Style64 = TextStyle(
      color: AppColors.deebBrown,
      fontSize: 64,
      fontWeight: FontWeight.w400,
      fontFamily: "Pacifico");

  static final pacifico600Style28 = TextStyle(
      color: AppColors.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins");
  static final pacifico500Style18 = TextStyle(
      color: AppColors.grey,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins");
  static final pacifico400Style12 = TextStyle(
      color: AppColors.deebGrey,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: "Poppins");

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
