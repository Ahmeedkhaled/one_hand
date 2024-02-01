import 'dart:async';
import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/routes.dart';
import 'package:one_hand/my_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(RoutesNames.getStarted);
    });
    return Scaffold(
      backgroundColor: MyTheme.blackColor,
      body: Center(child: Image.asset("assets/images/splash.png")),
    );
  }
}
