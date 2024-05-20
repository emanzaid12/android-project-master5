import 'package:flutter/material.dart';
import 'package:newtask/core2/cubit/build_context_extension.dart';

// ignore: must_be_immutable
class bodyV extends StatelessWidget {
  bodyV({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppBar(
          leading: Image.asset('assets/image/R.png'),
          backgroundColor: Colors.blue,
          title: const Text('Verification Page',
              style: TextStyle(fontWeight: FontWeight.bold)),
              titleTextStyle: context.getTheme.textTheme.displayLarge
              
        ),
        const Spacer(
          flex: 1,
        ),
        const CircleAvatar(
          radius: 50,
          backgroundColor: Colors.blue,
          backgroundImage: AssetImage('assets/image/R.png'),
        ),
        const Text(
          "WATCH STORE",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 0, 95, 172)),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Enter your verification code",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 1,
                  controller: TextEditingController(),
                  keyboardType: TextInputType.text,
                  decoration: decoration.copyWith(
                    hintText: "-",
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 50,
              child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 1,
                  controller: TextEditingController(),
                  keyboardType: TextInputType.text,
                  decoration: decoration.copyWith(
                    label: const Text("-"),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 50,
              child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 1,
                  controller: TextEditingController(),
                  keyboardType: TextInputType.text,
                  decoration: decoration.copyWith(
                    label: const Text("-"),
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
                width: 50,
                child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    maxLength: 1,
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    decoration: decoration.copyWith(
                      label: const Text("-"),
                    ))),
          ],
        ),
      ],
    );
  }

  InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 3),
        borderRadius: BorderRadius.circular(20)),
    errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 3),
        borderRadius: BorderRadius.circular(20)),
  );
}
