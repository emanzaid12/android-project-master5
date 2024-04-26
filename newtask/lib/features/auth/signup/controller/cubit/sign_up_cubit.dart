import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  TextEditingController  firstNameController =TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  GlobalKey<FormState> formKey=GlobalKey<FormState>();

  void OnPressedConfirmButton(){
    if(formKey.currentState!.validate()){
      log(firstNameController.text);
      log(lastNameController.text);
      log(mailController.text);
      log(passwordController.text);

    }
    else{
      log('invalid inputs');
    }
  }
}
