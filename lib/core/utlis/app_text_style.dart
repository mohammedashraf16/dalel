import 'package:dalel/core/utlis/app_color.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyles {
  static final pacifico400Style64 = TextStyle(
      color: AppColors.deepBrown,
      fontSize: 64,
      fontWeight: FontWeight.w400,
      fontFamily: "Pacifico");

  static final Poppins600Style28 = TextStyle(
      color: AppColors.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
      fontFamily: "Poppins");
  static final Poppins500Style18 = TextStyle(
      color: AppColors.grey,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins");
  static final Poppins400Style12 = TextStyle(
      color: AppColors.deepGrey,
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
  static final saira700Style32 = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.offWhite,
    fontSize: 32,
    fontFamily: "Saira",
  );
}
