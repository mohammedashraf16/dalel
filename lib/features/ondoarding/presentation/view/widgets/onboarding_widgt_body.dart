import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:dalel/features/ondoarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/ondoarding/presentation/view/widgets/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class OnboardingWidgetBody extends StatelessWidget {
  const OnboardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: OnBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 292,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        OnBoardingData[index].imagePath,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmoothPageIndecator(controller: controller),
              const SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  OnBoardingData[index].title,
                  style: CustomTextStyles.poppins500Style24.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                OnBoardingData[index].subTitle,
                style: CustomTextStyles.poppins300Style16,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
