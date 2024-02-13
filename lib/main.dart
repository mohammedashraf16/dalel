import 'package:dalel/core/database/cashe/cache_helper.dart';
import 'package:dalel/core/routs/app_router.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utlis/app_color.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Dalel());
}

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offWhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
