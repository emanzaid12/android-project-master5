import 'package:flutter/material.dart';
import 'package:newtask/features/auth/forget/component/bodyforget.dart';
import 'package:newtask/features/auth/forget/component/bottomforgetPage.dart';

class forgetPage extends StatelessWidget {
  const forgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(height: 500, child: bodyforget()),
        bottomNavigationBar:
                const SizedBox(height: 200, child: bottomforgetPage())));
  }
}
