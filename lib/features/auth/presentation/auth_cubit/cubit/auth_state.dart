part of 'auth_cubit.dart';

class AuthState {}

class AuthInitial extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SignUpSuccessState extends AuthState {}

class SignUpFailurState extends AuthState {
  final String errorMessage;

  SignUpFailurState(this.errorMessage);
}
