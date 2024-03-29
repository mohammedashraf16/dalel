part of 'auth_cubit.dart';

class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SignUpSuccessState extends AuthState {}

class SignUpFailurState extends AuthState {
  final String errorMessage;

  SignUpFailurState(this.errorMessage);
}

class SignInLoadingState extends AuthState {}

class SignInSuccessState extends AuthState {}

class SignInFailurState extends AuthState {
  final String errorMessage;
  SignInFailurState(this.errorMessage);
}

class ResetPasswordLoadingState extends AuthState {}

class ResetPasswordSuccessState extends AuthState {}

class ResetPasswordFailurState extends AuthState {
  final String errorMessage;
  ResetPasswordFailurState(this.errorMessage);
}

class TermsAndConditionUpdateState extends AuthState {}

class ObscurePasswordTextUpdateState extends AuthState {}
