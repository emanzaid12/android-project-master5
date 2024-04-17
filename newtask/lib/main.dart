import 'package:flutter/material.dart';
import 'package:newtask/features/auth/login/view/page/loginPage.dart';
import 'package:newtask/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() async{
 WidgetsFlutterBinding.ensureInitialized();
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    
   bool onBoarding= sharedPreferences.getBool('onboarding')?? false ;
  //runApp(const MyApp());
  runApp(MyApp(onBoarding:onBoarding));

}
class MyApp extends StatelessWidget {
  //const MyApp({super.key});

   final bool onBoarding;
const MyApp({Key? key, required this.onBoarding}) : super(key: key);
   

  

  
  @override
  Widget build(BuildContext context) {
   
   
   return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home:onBoarding ?  const loginPage():const OnBoardingPage(), 
    );
  }}
  

