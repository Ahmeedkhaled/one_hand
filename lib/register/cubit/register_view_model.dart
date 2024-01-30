import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_hand/register/cubit/register_states.dart';

class RegisterViewModal extends Cubit<RegisterState> {
  RegisterViewModal() : super(RegisterInitalState());
  bool isObscure = true;
  DateTime selectedDate = DateTime.now();
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var nameController = TextEditingController();

  var passwordController = TextEditingController();

  var numberController = TextEditingController();
  void register() async {
    try {
      if (formKey.currentState!.validate() == true) {
        // Navigator.of(context).pushNamed(HomePage.routeName);
      }
    } catch (e) {}
  }
  void showCalender(BuildContext context) async {
    var choosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 27000)),
        lastDate: DateTime.now());
    if (choosenDate != null) {
      selectedDate = choosenDate;
    }
  }
}
