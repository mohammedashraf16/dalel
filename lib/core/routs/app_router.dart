import 'package:dalel/features/ondoarding/presentation/view/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => SplashScreen(),
  ),
  GoRoute(
    path: "/onboarding",
    builder: (context, state) => OnboardingView(),
  ),
]);
