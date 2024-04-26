import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/features/auth/verification/component/bodyV.dart';
import 'package:newtask/features/auth/verification/component/buttonV.dart';
import 'package:newtask/features/auth/verification/controller/cubit/verification_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verificationPage extends StatelessWidget {
  const verificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => VerificationCubit(),
        child: BlocBuilder<VerificationCubit, VerificationState>(
            builder: (context, state) {
          final VerificationCubit cubit = context.read<VerificationCubit>();
          return Scaffold(
              body: Column(children: [
                AppBar(
                  leading: Image.asset('assets/image/R.png'),
                  backgroundColor: Colors.blue,
                  title: const Text('Verification Page',
                      style: TextStyle(fontWeight: FontWeight.bold)),
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
                PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: Colors.green.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 5,
                  obscureText: true,
                  obscuringCharacter: '*',
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 3) {
                      return "I'm from validator";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  cursorColor: Colors.black,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: cubit.pinCodeController,
                  keyboardType: TextInputType.number,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  onCompleted: (v) {
                    debugPrint("Completed");
                  },
                  // onTap: () {
                  //   print("Pressed");
                  // },
                ),
                const SizedBox(
                  height: 30,
                ),
              ]),
              bottomNavigationBar: SizedBox(
                  height: 100,
                  child: FilledButton(
                      onPressed: cubit.onTapConfirm,
                      child: const Text("Verify"))));
        }));
  }
}
