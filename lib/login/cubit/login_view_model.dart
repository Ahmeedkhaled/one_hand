import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_hand/login/cubit/login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitalState());
  bool isObscure = true;
  var formKey = GlobalKey<FormState>();
  var mobileController = TextEditingController();
  var passwordController = TextEditingController();
  void login() async {
    try {
      if (formKey.currentState!.validate() == true) {
        // Navigator.of(context).pushNamed(HomePage.routeName);
      }
    } catch (e) {

    }
  }
}
