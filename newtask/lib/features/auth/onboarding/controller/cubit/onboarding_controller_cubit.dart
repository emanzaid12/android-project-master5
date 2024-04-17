//import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:newtask/features/auth/onboarding/model/onboarding_model.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());
  PageController pageController=PageController();
  void onChangeToNext(){
    pageController.nextPage(duration: Duration(seconds: 2), curve: Curves.bounceIn);
  }
  List date = [
    OnboardingModel(
        images: 'assets/image/images.jpg',
        titles: 'first',
        subtitles: 'first Screen'),
    OnboardingModel(
        images: 'assets/image/images.jpg',
        titles: 'second',
        subtitles: 'second Screen'),
    OnboardingModel(
        images: 'assets/image/images.jpg',
        titles: 'third',
        subtitles: 'third Screen'),
  ];
}
