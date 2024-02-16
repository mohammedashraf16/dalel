import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_forgot_password_form.dart';
import 'package:dalel/features/auth/presentation/widgets/forgot_password_image.dart';
import 'package:dalel/features/auth/presentation/widgets/forgot_password_sub_title.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 108,
            ),
          ),
          SliverToBoxAdapter(
            child: WelcomeTextWidgt(text: AppStrings.forgotPasswordPage),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: ForgotPasswordImage(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: ForgotPasswordSubTitle(),
          ),
          SliverToBoxAdapter(
            child: CustomForgotPasswordForm(),
          )
        ],
      ),
    );
  }
}
