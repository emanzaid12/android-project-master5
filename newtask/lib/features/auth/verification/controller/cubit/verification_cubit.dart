import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState>{
  VerificationCubit{} : super (VerificationInitial({}));

  TextEditingController pinCodeController = TextEditingController();
  final String validateCode = '11111';
  void onTapConfirm(){
    if (pinCodeController.text == validateCode)
    {
      Navigator.push(
      context as BuildContext,
      MaterialPageRoute(builder: (context) => const loginPage()),
      );
    }
    else
    {
      print ("Invalide");
    }
  }
}