import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_hand/core/utils/images.dart';
import 'package:one_hand/core/utils/routes.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/view/base/auth/register/cubit/register_states.dart';
import 'package:one_hand/view/base/auth/register/cubit/register_view_model.dart';
import 'package:one_hand/view/widgets/text_form_field.dart';


class SecondRegister extends StatefulWidget {
  const SecondRegister({super.key});

  @override
  State<SecondRegister> createState() => _SecondRegisterState();
}

class _SecondRegisterState extends State<SecondRegister> {
  RegisterCubit registerCubit = RegisterCubit();
  List<String> countries = ["Egypt", "USA", "Syria"];
  String selectedCountry = "Egypt";
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
                    .pushReplacementNamed(RoutesNames.registerScreen);
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
                    fieldName: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          registerCubit.isObscure = !registerCubit.isObscure;
                          setState(() {});
                        },
                        icon: registerCubit.isObscure
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    isObscure: registerCubit.isObscure,
                    controller: registerCubit.passwordController,
                    hintText: "Password",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter your Password";
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                        fieldName: "Address ",
                        controller: registerCubit.nameController,
                        hintText: "Enter Your Address",
                        suffixIcon: const Icon(Icons.location_on_outlined),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "please enter your name";
                          }
                          return null;
                        }),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text("Country",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(color: MyTheme.blackColor)),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: const Color(0xffEEEEEE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: DropdownButton(
                            padding: const EdgeInsets.all(15),
                            icon: null,
                            isExpanded: true,
                            underline: const Text(""),
                            value: selectedCountry,
                            items: countries
                                .map((country) => DropdownMenuItem(
                                    value: country,
                                    child: Text(
                                      country,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(color: MyTheme.blackColor),
                                    )))
                                .toList(),
                            onChanged: (String? country) {
                              setState(() {
                                selectedCountry = country!;
                              });
                            }),
                      ),
                    ],
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
                        child: Image.asset("assets/images/number-2.png")),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.2,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      registerCubit.register();

                      ///----------------------------
                      ///navigate to homeScreen
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                    ),
                    child: const Text(
                      "Submit",
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
