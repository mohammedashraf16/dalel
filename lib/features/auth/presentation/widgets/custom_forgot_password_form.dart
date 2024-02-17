import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utlis/app_color.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_text_field.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToast("chech your email to reset password");
          customReplacementNavigate(context, "/SignIn");
        } else if (state is ResetPasswordFailurState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.resetPasswordFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                const SizedBox(
                  height: 185,
                ),
                state is ResetPasswordLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      )
                    : CustomBtn(
                        text: AppStrings.sendResetPasswordLink,
                        onPressed: () async {
                          {
                            if (authCubit.resetPasswordFormKey.currentState!
                                .validate()) {
                              await authCubit.resetPasswordWithLink();
                            }
                          }
                        },
                      ),
                const SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
