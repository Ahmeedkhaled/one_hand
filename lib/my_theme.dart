import 'package:flutter/material.dart';

class MyTheme{
  static Color grayColor=Color(0xff8E8E8E);
  static Color blackColor=Color(0xff020202);
  static Color whiteColor=Color(0xffeeeeee);
  static ThemeData lightMode=ThemeData(
    primaryColor:grayColor,
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
    )

  );
}