import 'package:flutter/material.dart';

class MyTheme {
  static Color grayColor = const Color(0xff8E8E8E);
  static Color blackColor = const Color(0xff020202);
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
      ));
}
