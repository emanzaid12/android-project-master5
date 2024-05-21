import 'package:flutter/material.dart';
import 'package:newtask/core2/cubit/parentt_cubit.dart';
import 'package:newtask/features/auth/forget/view/forgetPage.dart';
import 'package:newtask/features/auth/signup/view/signUpPage.dart';

class bottomW extends StatelessWidget {
  const bottomW({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () {},
                child: const Text("Login")),
            TextButton(
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                child: const Text(" Forget password!",
                    style: TextStyle(
                        decorationStyle: TextDecorationStyle.solid,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue)))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have account! "),
            FilledButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signUpPage()),
                  );
                },
                child: const Text("Sign up"))
          ],

        ),
      ],
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const forgetPage()));
  }
}
