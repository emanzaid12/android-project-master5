import 'package:flutter/material.dart';
import 'package:newtask/features/auth/login/view/component/bodyW.dart';
import 'package:newtask/features/auth/login/view/component/bottomW.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(height: 500, child: bodyW()),
            bottomNavigationBar:
                const SizedBox(height: 200, child: bottomW())));
  }
}
