import 'package:flutter/material.dart';

class MyTheme {
  static Color grayColor = const Color(0xff8E8E8E);
  static Color blackColor = const Color.fromARGB(255, 0, 0, 0);
  static Color whiteColor = const Color(0xffeeeeee);
  static ThemeData lightMode = ThemeData(
      primaryColor: grayColor,
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 25,
          color: grayColor,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: const TextStyle(
          fontSize: 20,
          color: Color(0xff777575),
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w700,
      ),
      bodySmall:  const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w300,
      ),
      ),
      
   );
}
