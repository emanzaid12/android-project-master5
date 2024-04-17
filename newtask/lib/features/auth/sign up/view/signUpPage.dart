import 'package:flutter/material.dart';
import 'package:newtask/features/auth/sign up/component/body_sign_up.dart';
import 'package:newtask/features/auth/sign up/component/button_sign_up';

class signUpPage extends StatelessWidget {
  const signUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(height: 500, child: body_sign_up()),
            bottomNavigationBar:
                const SizedBox(height: 200, child: button_sign_up())));
         
  }
}
