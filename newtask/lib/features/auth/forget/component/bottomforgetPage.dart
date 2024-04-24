import 'package:flutter/material.dart';
import 'package:newtask/features/auth/newPass/view/newpassPage.dart';

class bottomforgetPage extends StatelessWidget {
  const bottomforgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FilledButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const newpassPage()));
          },
          child: const Text("Verification"))
    ]);
  }
}
