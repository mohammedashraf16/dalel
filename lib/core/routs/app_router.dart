import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/ondoarding/presentation/view/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignUpView(),
    ),
  ),
  GoRoute(
    path: "/SignIn",
    builder: (context, state) => BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const SignUpView(),
    ),
  ),
]);
