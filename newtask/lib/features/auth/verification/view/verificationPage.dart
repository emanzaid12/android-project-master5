import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtask/core/context_extension.dart';
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
                height: 10,
              ),
              const Text(
                "Enter your verification code",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  borderRadius: BorderRadius.circular(25),
                  fieldHeight: context.width / 8,
                  fieldWidth: context.width / 8,
                  activeFillColor: const Color.fromARGB(255, 103, 204, 255),
                  inactiveFillColor: Colors.white,
                  inactiveColor: const Color.fromARGB(255, 0, 169, 254),
                  fieldOuterPadding: EdgeInsets.all(context.width / 40),
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
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                  height: 100,
                  width: 150,
                  child: FilledButton(style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () => cubit.OnPressedConfirmButton(context),
                      child: const Text("Verify")))
            ]),
          );
        }));
  }
}
