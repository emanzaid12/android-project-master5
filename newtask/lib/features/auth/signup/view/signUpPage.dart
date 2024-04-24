import 'package:flutter/material.dart';
import 'package:newtask/features/auth/signup/component/body_sign_up.dart';
import 'package:newtask/features/auth/signup/component/button_sign_up.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(height: 600, child: body_sign_up()),
            bottomNavigationBar:
                const SizedBox(height: 100, child: button_sign_up())));
         
  }
}