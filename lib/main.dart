import 'package:flutter/material.dart';
import 'package:one_hand/get_started/get_start.dart';
import 'package:one_hand/login/forget_password.dart';
import 'package:one_hand/login/login.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/register/register.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/splash/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.splash_screen,
      routes: {
        RoutesNames.splash_screen:(context)=>SplashScreen(),
        RoutesNames.get_started:(context)=>GetStart(),
        RoutesNames.login_screen:(context)=>LogInScreen(),
        RoutesNames.register_screen:(context)=>RegisterScreen(),
        RoutesNames.forget_password:(context)=>ForgetPassword(),
      },
      theme:MyTheme.lightMode ,
    );
  }

}