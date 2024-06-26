import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/core/utils/validation.dart';
import 'package:newtask/core2/cubit/build_context_extension.dart';

import 'package:newtask/core2/cubit/parentt_cubit.dart';
import 'package:newtask/features/auth/signup/controller/cubit/sign_up_cubit.dart';

// ignore: must_be_immutable
class body_sign_up extends StatelessWidget {
  body_sign_up({super.key, required this.controller});

  final SignUpCubit controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      //create:(context)=>ParenttCubit.instance,
      child: BlocBuilder<SignUpCubit, SignUpState>(
        builder: (context, state) {
          SignUpCubit controller = context.read<SignUpCubit>();
          return Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // create:(context) ParentCubit.instans,
                AppBar(
                  leading: Image.asset('assets/image/R.png'),
                  backgroundColor: Colors.blue,
                  title: Text('item_page_title1'.tr,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  titleTextStyle: Theme.of(context).textTheme.displayLarge,
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        ParenttCubit.instance.changMode();
                        //     ParenttCubit.instance.changLang();
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      child: const Text(
                        'Theme',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ParenttCubit.instance.changMode();
                        ParenttCubit.instance.changLang();
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      child: const Text(
                        'Language',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/image/R.png'),
                ),
                const Text(
                  "WATCH STORE",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 95, 172)),
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.firstNameController,
                    keyboardType: TextInputType.name,
                    validator: validationOf().nameValidate,
                    decoration: decoration.copyWith(
                        label: const Text("Frist name"),
                        prefixIcon: const Icon(Icons.abc))),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.lastNameController,
                    keyboardType: TextInputType.name,
                    validator: validationOf().nameValidate,
                    decoration: decoration.copyWith(
                        label: const Text("Last name"),
                        prefixIcon: const Icon(Icons.abc))),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.mailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: validationOf().emailValidate,
                    decoration: decoration.copyWith(
                        label: const Text("Email"),
                        hintText: "xxxx@gmail.com",
                        prefixIcon: const Icon(Icons.email))),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller.passwordController,
                  keyboardType: TextInputType.emailAddress,
                  validator: validationOf().passValidate,
                  decoration: decoration.copyWith(
                      label: const Text("Password"),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      prefixIcon: const Icon(Icons.lock)),
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 3),
        borderRadius: BorderRadius.circular(20)),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(20)),
  );
}
