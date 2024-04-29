import 'package:flutter/material.dart';
import 'package:newtask/features/auth/login/component/bodyW.dart';
import 'package:newtask/features/auth/login/component/bottomW.dart';

class loginPage extends StatelessWidget {
  const loginPage({
    super.key,
    required this.firstName,
    required this.lastName,
  });
  final String firstName, lastName;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text("$firstName $lastName",
                    style: const TextStyle(fontWeight: FontWeight.bold))),
            body: SizedBox(height: 500, child: bodyW()),
            bottomNavigationBar:
                const SizedBox(height: 200, child: bottomW())));
  }
}
