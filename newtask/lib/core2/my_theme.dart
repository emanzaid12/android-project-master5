import 'package:flutter/material.dart';

class MyTheme {
  static final MyTheme inastance = MyTheme();
  ThemeData light = ThemeData.light(useMaterial3: true).copyWith(
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.light(
        background: Color.fromARGB(255, 0, 157, 255),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 16, color: Colors.blue),
      bodyLarge: TextStyle(
        fontSize: 19,
        color: Colors.red,
      ),
      labelLarge: TextStyle(fontSize: 16, color: Colors.grey),
    ),
  );
  ThemeData dark = ThemeData.dark(useMaterial3: true).copyWith(
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(
        background: Colors.red,
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 16, color: Colors.orange),
      bodyLarge: TextStyle(
          fontSize: 19, color: Colors.green, fontWeight: FontWeight.bold),
      labelLarge: TextStyle(fontSize: 16, color: Colors.grey),
    ),
  );
}
