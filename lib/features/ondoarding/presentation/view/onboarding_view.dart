import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/onboarding_widgt_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 40,
              ),
              const CusomNavBar(),
              OnboardingWidgetBody(),
              const SizedBox(
                height: 150,
              ),
              const CustomBtn(text: AppStrings.next),
              const SizedBox(
                height: 17,
              )
            ],
          ),
        ),
      ),
    );
  }
}
