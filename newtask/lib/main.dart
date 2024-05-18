import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newtask/core/firebase/my_firebase.dart';
import 'package:newtask/core/routes/my_routes.dart';
import 'package:newtask/core2/my_theme.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:newtask/features/auth/signup/view/signUpPage.dart';
import 'package:newtask/features/dashboard/view/page/dashboardPage.dart';
import 'package:newtask/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyFirebase().init();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;
  //runApp(const MyApp());
  runApp(MyApp(onBoarding: onBoarding));
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  final bool onBoarding;
  const MyApp({Key? key, required this.onBoarding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: onBoarding ? const loginPage() : const OnBoardingPage(),
      onGenerateRoute: MyRoutes.onGenerateRoute,
      onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
      theme: MyTheme.inastance.light,
      darkTheme: MyTheme.inastance.dark,
      themeMode: ThemeMode.dark,
    );
  }
}
