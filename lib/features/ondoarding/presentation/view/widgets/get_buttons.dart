import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/ondoarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/ondoarding/presentation/view/functions/on_boarding.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == OnBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
              text: AppStrings.createAccount,
              onPressed: () {
                onBoardingVisited();
                customReplacementNavigate(context, "/SignUp");
              }),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/SignIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300Style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
              duration: const Duration(microseconds: 200),
              curve: Curves.bounceIn);
        },
      );
    }
  }
}
