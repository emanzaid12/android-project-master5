import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/signup/controller/cubit/sign_up_cubit.dart';
import 'package:newtask/features/dashboard/modules/users/model/local_db_data.dart';

class button_sign_up extends StatelessWidget {
  button_sign_up({super.key, required this.controller});

  final SignUpCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: controller,
        child: BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
          SignUpCubit controller = context.read<SignUpCubit>();
          return Column(
            children: [
              const SizedBox(
                height: 10
              ),
             
                  FilledButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                       onPressed: () async {
                        //log('added successfully');
                         controller.OnPressedConfirmButton(context);
                        
                      },
                      child: const Text("Confirm")
                      
                          ),
                
              
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("have an account? "),
                  FilledButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {
                          //controller.OnPressedConfirmButton(context);
                          
                      }
                        ,
                      child: const Text("Login")),
                ],
              )
            ],
          );
        }));
  }
}
