import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/signup/controller/cubit/sign_up_cubit.dart';

class button_sign_up extends StatelessWidget {
   button_sign_up({super.key, required this.controller});

  final SignUpCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider .value(
      value:controller,
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          SignUpCubit controller =context.read<SignUpCubit>();
          return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: controller.OnPressedConfirmButton
                ,
                child: const Text("Confirm")),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("have account? "),
            FilledButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const loginPage()));
                },
                child: const Text("Login Here"))
          ],
        )
      ],
    );
        }));
  }

}