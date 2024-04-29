import 'package:flutter/material.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/signup/view/signUpPage.dart';

class buttonV extends StatelessWidget {
  const buttonV({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FilledButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const signUpPage()),
            );
          },
          child: const Text("Verify"))
    ]);
  }
}
