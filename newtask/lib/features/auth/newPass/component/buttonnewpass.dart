import 'package:flutter/material.dart';
import 'package:newtask/features/auth/verification/view/verificationPage.dart';

class buttonnewpass extends StatelessWidget {
  const buttonnewpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FilledButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const verificationPage()),
            );
          },
          child: const Text("Confirm"))
    ]);
  }
}
