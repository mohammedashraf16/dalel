import 'package:cloud_firestore/cloud_firestore.dart';
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
  bool? termsAndConditionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey();

  Future<void> signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      await verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      _signUpHanndleException(e);
    } catch (e) {
      emit(SignUpFailurState(e.toString()));
    }
  }

  void _signUpHanndleException(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(SignUpFailurState('The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(SignUpFailurState('The account already exists for that email.'));
    } else if (e.code == "Invalid-email") {
      emit(SignInFailurState("The email is invalid"));
    } else {
      emit(SignInFailurState(e.code));
    }
  }

  Future<void> verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  void updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailurState("No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailurState("Wrong password provided for that user."));
      } else {
        emit(SignInFailurState("Check Your Email and password"));
      }
    } catch (e) {
      emit(SignInFailurState(e.toString()));
    }
  }

  Future<void> resetPasswordwithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccessState());
    } on Exception catch (e) {
      emit(ResetPasswordFailurState(e.toString()));
    }
  }

  Future<void> addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.add(
      {
        'first_name': firstName,
        'last_name': lastName,
        'email': emailAddress,
      },
    );
  }
}
