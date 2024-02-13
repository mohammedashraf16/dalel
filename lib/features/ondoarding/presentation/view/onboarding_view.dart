import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/ondoarding/presentation/view/functions/on_boarding.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_nav_bar.dart';
import 'widgets/get_buttons.dart';
import 'widgets/onboarding_widgt_body.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
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
              CusomNavBar(onTap: () {
                onBoardingVisited();
                customReplacementNavigate(context, "/SignUp");
              }),
              OnboardingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              const SizedBox(
                height: 150,
              ),
              GetButton(currentIndex: currentIndex, controller: _controller),
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
