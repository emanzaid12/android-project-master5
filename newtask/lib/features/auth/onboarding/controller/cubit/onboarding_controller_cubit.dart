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
        images: 'assets/image/eman.jpg',
        titles: 'Project over view',
        subtitles: 'Welcome to our online watch store! Explore our diverse collection of luxury and contemporary watches that add a touch of elegance to every moment of your life. Shop now and enjoy the best exclusive offers and services'),
    OnboardingModel(
        images: 'assets/image/Minifocus-Lady-Watch-Mini-Focus-Minimalist-Day-Date-Leather-Band-Quartz-Watches-Montre-Mini-Focus.webp',
        titles: 'Browse Top Brands',
        subtitles: 'The Online Watches Project is an e-commerce platform that offers a variety of luxury and trendy watches to customers. The services provided by the platform include displaying and selling watches online, along with providing comprehensive information about each watch including specifications and prices. The platform aims to provide a convenient and easy shopping experience for users, with the possibility.'),
    OnboardingModel(
        images: 'assets/image/IMG-20240420-WA0039.jpg',
        titles: 'Product Details',
        subtitles: 'Citizen Eco-Drive Axiom women s Stainless Steel Watch AU1065-58E'),
  ];
}
