import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_hand/core/images.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/register/cubit/register_states.dart';
import 'package:one_hand/register/cubit/register_view_model.dart';
import 'package:one_hand/widgets/text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterCubit registerCubit = RegisterCubit();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      bloc: registerCubit,
      listener: (context, state) {},
      child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(RoutesNames.getStarted);
              },
              icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Center(
              child: Image.asset(
            AppImages.appLogo,
            width: MediaQuery.of(context).size.width * 0.4,
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Form(
            key: registerCubit.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFieldWidget(
                    fieldName: "Name ",
                    controller: registerCubit.nameController,
                    hintText: "Enter Your Name",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter your name";
                      }
                      return null;
                    }),
                TextFieldWidget(
                    fieldName: "Email",
                    controller: registerCubit.emailController,
                    hintText: "Enter Your email",
                    keyBoardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter your email";
                      }
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value);
                      if (!emailValid) {
                        return "please enter valid email";
                      }
                      return null;
                    }),
                TextFieldWidget(
                    keyBoardType: TextInputType.number,
                    fieldName: "Mobile Number",
                    controller: registerCubit.numberController,
                    hintText: "enter Your Mobile",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter your Mobile";
                      }
                      if (value.trim().length < 11 ||
                          value.trim().length > 11) {
                        return "password should be 11";
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("Birth day",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: MyTheme.blackColor)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    registerCubit.showCalender(context);
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffEEEEEE),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.08,
                          vertical: MediaQuery.of(context).size.height * 0.03),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${registerCubit.selectedDate.month}/${registerCubit.selectedDate.day}/${registerCubit.selectedDate.year}",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            const Icon(Icons.calendar_month)
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: Image.asset(AppImages.logoOne)),
                    const Icon(Icons.arrow_forward_rounded),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                        child: Image.asset("assets/images/circle-2.png")),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2),
                  child: ElevatedButton(
                    onPressed: () {
                      registerCubit.register();
                      Navigator.of(context)
                          .pushNamed(RoutesNames.secondRegister);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                    ),
                    child: const Text(
                      "Next",
                      // style: TextStyle(color: MyTheme.whiteColor, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushReplacementNamed(RoutesNames.loginScreen),
                  child: Center(
                    child: Text(
                      "Already have an account?",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: MyTheme.blackColor, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      )))),
    );
  }
}
