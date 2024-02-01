import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/routes.dart';
import 'package:one_hand/my_theme.dart';

// ignore: must_be_immutable
class ForgetPassword extends StatelessWidget {
  var mobileController = TextEditingController();

  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RoutesNames.loginScreen);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Find Your account ",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: MyTheme.blackColor),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Enter Your Mobile number ",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: MyTheme.blackColor),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    style: TextStyle(color: MyTheme.blackColor),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "please enter your Number";
                      }
                      if (value.trim().length < 11 ||
                          value.trim().length > 11) {
                        return "please enter right number";
                      }
                      return null;
                    },
                    controller: mobileController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Mobile number",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                      ),
                      child: const Text(
                        "Find Account",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
