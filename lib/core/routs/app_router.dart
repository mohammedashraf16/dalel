import 'package:dalel/features/auth/presentation/views/sign_in.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/ondoarding/presentation/view/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: "/onboarding",
    builder: (context, state) => const OnboardingView(),
  ),
  GoRoute(
    path: "/SignUp",
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: "/SignIn",
    builder: (context, state) => const SignInView(),
  ),
]);
