import 'package:dalel/core/database/cashe/cache_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      delayedNavigate(context, "/SignUp");
    } else {
      delayedNavigate(context, "/onboarding");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400Style64,
        ),
      ),
    );
  }
}

void delayedNavigate(context, Path) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      customNavigate(context, Path);
    },
  );
}
