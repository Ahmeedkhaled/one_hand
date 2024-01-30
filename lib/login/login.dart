import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_hand/core/images.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/login/cubit/login_states.dart';
import 'package:one_hand/login/cubit/login_view_model.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/widgets/text_form_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  LoginCubit loginCubit = LoginCubit();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      bloc: loginCubit,
      listener: (context, state) {

      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  key: loginCubit.formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFieldWidget(
                            keyBoardType: TextInputType.number,
                            controller: loginCubit.mobileController,
                            hintText: "Mobile Number",
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "please enter your Number";
                              }
                              if (value.trim().length < 11 ||
                                  value.trim().length > 11) {
                                return "please enter right number";
                              }
                              return null;
                            }),
                        TextFieldWidget(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  loginCubit.isObscure = !loginCubit.isObscure;
                                  setState(() {});
                                },
                                icon: loginCubit.isObscure
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility)),
                            isObscure: loginCubit.isObscure,
                            controller: loginCubit.passwordController,
                            hintText: "Password",
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "please enter your Password";
                              }
                              return null;
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            onPressed: () {
                              loginCubit.login(

                                  ///Navigator to home Screen
                                  );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll(Colors.black),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                            child: const Text(
                              "Log in",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(RoutesNames.forgetPassword);
                            },
                            child: const Text(
                              "ForgetPassword?",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(RoutesNames.registerScreen);
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    padding: const EdgeInsets.symmetric(
                                        // horizontal: MediaQuery.of(context).size.width*0.25,
                                        // vertical: MediaQuery.of(context).size.height*0.02,
                                        ),
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                        side: const BorderSide(width: 1))),
                                child: Text(
                                  "Create new account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: MyTheme.blackColor,
                                          fontSize: 25),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
