import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/auth/signup/component/body_sign_up.dart';
import 'package:newtask/features/auth/signup/component/button_sign_up.dart';
import 'package:newtask/features/auth/signup/controller/cubit/sign_up_cubit.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider<SignUpCubit>(
      create: (context) => SignUpCubit(),
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          final SignUpCubit controller=context.read<SignUpCubit>();
          return Scaffold(
              body: SizedBox(height: 600, child: body_sign_up(controller: controller,)),
              bottomNavigationBar:
                   SizedBox(height: 100, child: button_sign_up(controller: controller,)));
        },
      ),
    ));
  }
}
