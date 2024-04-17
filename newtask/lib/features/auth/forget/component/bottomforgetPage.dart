import 'package:flutter/material.dart';

class bottomforgetPage extends StatelessWidget {
  const bottomforgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FilledButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {},
          child: const Text("Verification"))
    ]);
  }
}

