import 'package:flutter/material.dart';
import 'package:one_hand/core/images.dart';
import 'package:one_hand/get_started/get_start.dart';
import 'package:one_hand/login/textformfield_login.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/register/register.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/widgets/text_form_field.dart';

class LogInScreen extends StatefulWidget{

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.of(context).pushReplacementNamed(RoutesNames.get_started);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.02,
            ),
            Center(child: Image.asset(AppImages.appLogo,width: MediaQuery.of(context).size.width*0.4,)),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            TextFormFieldLogin(),

          ],
        ),
      ),
    );
  }
}