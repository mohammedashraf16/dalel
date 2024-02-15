import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? TermsAndConditionCheckBoxValue = false;
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailurState('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailurState('The account already exists for that email.'));
      }
    } catch (e) {
      print(e.toString());
      emit(SignUpFailurState(e.toString()));
    }
  }

  updateTermsAndConditionCheckBox({required newValue}) {
    TermsAndConditionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }
}
