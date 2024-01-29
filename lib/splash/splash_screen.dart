import 'dart:async';

import 'package:flutter/material.dart';
import 'package:one_hand/get_started/get_start.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/core/routes.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  Timer(Duration(seconds:3),(){
    Navigator.of(context).pushReplacementNamed(RoutesNames.get_started);
  });
  return Scaffold(
    backgroundColor: MyTheme.blackColor,
    body: Center(
      child: Image.asset("assets/images/one-hand.png")
    ),
  );
  }

}