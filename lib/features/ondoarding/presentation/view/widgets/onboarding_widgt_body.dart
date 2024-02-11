import 'package:dalel/core/utlis/app_assets.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:dalel/features/ondoarding/presentation/view/widgets/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class OnboardingWidgetBody extends StatelessWidget {
  OnboardingWidgetBody({super.key});
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(Assets.imagesOnboarding1),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndecator(controller: _controller),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  "Explore The history with Dalel in a smart way",
                  style: CustomTextStyles.poppins500Style24.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Using our app’s history libraries you can find many historical periods ",
                style: CustomTextStyles.poppins300Style16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
