import 'package:flutter/material.dart';

class homeW extends StatelessWidget {
  const homeW({super.key});

  @override
  Widget build(BuildContext context) {
    return  (
        AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Login Page',
              style: TextStyle(fontWeight: FontWeight.bold)),
        )
    );
  }
}
