import 'package:flutter/material.dart';
import 'package:newtask/features/auth/newPass/component/bodynewpass.dart';
import 'package:newtask/features/auth/newPass/component/buttonnewpass.dart';

class newpassPage extends StatelessWidget {
  const newpassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(height: 500, child: bodynewpass()),
            bottomNavigationBar:
                const SizedBox(height: 200, child: buttonnewpass())));
  }
}
