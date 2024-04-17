import 'package:flutter/material.dart';
import 'package:newtask/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class OnboardingButtonWidget extends StatelessWidget {
  
      OnboardingButtonWidget({super.key, required this.controller});
  OnboardingControllerCubit controller;

  Widget build(BuildContext context) {
    return BlocProvider<OnboardingControllerCubit>.value(
      value: OnboardingControllerCubit(),
      child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
        builder: (context, state) {
          OnboardingControllerCubit controller =
              context.read<OnboardingControllerCubit>();
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {}, child: const Text("Skip")),
                TextButton(onPressed: controller.onChangeToNext, child: const Text("Next")),
              ],
            ),
          );
        },
      ),
    );
  }
}
