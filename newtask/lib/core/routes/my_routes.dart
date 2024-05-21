import 'package:flutter/material.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:newtask/features/auth/signup/view/signUpPage.dart';
import 'package:newtask/features/auth/verification/view/verificationPage.dart';

class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const OnBoardingPage(),
    ),
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //settings.arguments
    switch (settings.name) {
      case 'login':
        final List data = settings.arguments as List;
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => loginPage(
            firstName: data[0] as String,
            lastName: data[1] as String,
          ),
        );
      case 'signup':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const signUpPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const verificationPage(),
        );
    }
  }
}
