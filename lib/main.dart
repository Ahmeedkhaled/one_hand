import 'package:flutter/material.dart';
import 'package:one_hand/get_started/get_start.dart';
import 'package:one_hand/login/forget_password.dart';
import 'package:one_hand/login/login.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/register/register.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/register/second_register.dart';
import 'package:one_hand/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.splashScreen,
      routes: {
        RoutesNames.splashScreen: (context) => const SplashScreen(),
        RoutesNames.getStarted: (context) => const GetStart(),
        RoutesNames.loginScreen: (context) => const LogInScreen(),
        RoutesNames.registerScreen: (context) => const RegisterScreen(),
        RoutesNames.forgetPassword: (context) => ForgetPassword(),
        RoutesNames.secondRegister: (context) => const SecondRegister(),
      },
      theme: MyTheme.lightMode,
    );
  }
}
