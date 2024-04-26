import 'package:flutter/material.dart';
import 'package:newtask/features/auth/login/view/loginPage.dart';
import 'package:newtask/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:newtask/features/auth/signup/view/signUpPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      onGenerateRoute: MyRoutes.onGenerateRoute,
      onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
    );
  }
}
class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const OnBoardingPage(),
    ),
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const signUpPage(),
    ),
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //settings.arguments
    switch (settings.name) {
      case 'login':
        
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const loginPage(),
        );
      case 'signup':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const signUpPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnBoardingPage(),
        );
    }
  }
}

