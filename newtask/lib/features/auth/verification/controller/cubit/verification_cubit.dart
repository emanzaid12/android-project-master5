// ignore: avoid_web_libraries_in_flutter
// import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/signup/view/signUpPage.dart';
part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState>{
  VerificationCubit() : super (VerificationInitial());

  TextEditingController pinCodeController = TextEditingController();
  final String validateCode = '11111';

    void OnPressedConfirmButton(BuildContext context) {
    if (pinCodeController.text == validateCode) {
      Navigator.push(context,
                MaterialPageRoute(builder: (context) => const loginPage(firstName: '', lastName: '',)));
    } else {
      print('invalid inputs');
    }
  }
}