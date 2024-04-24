import 'package:flutter/material.dart';
import 'package:newtask/features/auth/onboarding/controller/cubit/onboarding_controller_cubit.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key, required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 30,
      ),
      const Text("Welcome in WATCH STORE",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromARGB(255, 0, 95, 172))),
      Expanded(
        child: BlocProvider<OnboardingControllerCubit>.value(
          value: OnboardingControllerCubit(),
          child:
              BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
            builder: (context, state) {
              OnboardingControllerCubit controller =
                  context.read<OnboardingControllerCubit>();
              return PageView(
                controller: controller.pageController,
                children: List.generate(controller.date.length, (index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Image.asset(controller.date[index].images),
                        width: 300,
                        height: 300,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        controller.date[index].titles,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 69, 125),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        controller.date[index].subtitles,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 87, 106, 121),
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      )
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
