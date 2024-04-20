import 'package:flutter/material.dart';
import 'package:newtask/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class OnboardingBody extends StatelessWidget{
   OnboardingBody ({super.key,required this.controller});
  OnboardingControllerCubit controller;
  @override
  
  Widget build(BuildContext context) {
    return  Column(children: [
        Text("Welcome In Watch store"),
        Expanded(
          child: BlocProvider<OnboardingControllerCubit>.value(
            value:  OnboardingControllerCubit(),
            child: BlocBuilder<OnboardingControllerCubit,
                OnboardingControllerState>(
              builder: (context, state) {
                OnboardingControllerCubit controller =
                    context.read<OnboardingControllerCubit>();
                return PageView(
                  controller: controller.pageController,
                  children: List.generate(controller.date.length, (index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(controller.date[index].images),
                        Text(controller.date[index].titles,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                                Text(controller.date[index].subtitles)
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        )
      ]);
  }
}