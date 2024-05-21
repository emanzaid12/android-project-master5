import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/core/utils/validation.dart';
import 'package:newtask/core2/cubit/build_context_extension.dart';
import 'package:newtask/core2/cubit/parentt_cubit.dart';

// ignore: must_be_immutable
class bodyW extends StatelessWidget {
  bodyW({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                leading: Image.asset('assets/image/R.png'),
                backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
                title:  Text('item_page_title'.tr,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                    titleTextStyle: context.getTheme.textTheme.displayLarge,
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
             //   ParenttCubit.instance.changMode();
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
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: TextEditingController(),
                  keyboardType: TextInputType.emailAddress,
                  validator: validationOf().emailValidate,
                  decoration: decoration.copyWith(
                      label: const Text("Gmail"),
                      hintText: "xxxx@gmail.com",
                      prefixIcon: const Icon(Icons.email))),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                validator: validationOf().passValidate,
                decoration: decoration.copyWith(
                    label: const Text("Password"),
                    suffixIcon: const Icon(Icons.remove_red_eye)),
                obscureText: true,
                obscuringCharacter: '*',
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          );
        }
      
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

