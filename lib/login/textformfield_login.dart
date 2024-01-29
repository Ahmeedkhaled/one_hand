import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/widgets/text_form_field.dart';

class TextFormFieldLogin extends StatefulWidget {
  @override
  State<TextFormFieldLogin> createState() => _TextFormFieldLoginState();
}

class _TextFormFieldLoginState extends State<TextFormFieldLogin> {
  bool isObscure = true;
  var formKey = GlobalKey<FormState>();
  var mobileController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFieldWidget(
                keyBoardType: TextInputType.number,
                controller: mobileController,
                hintText: "Mobile Number",
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter your Number";
                  }
                  if(value.trim().length < 11||value.trim().length>11){
                    return "please enter right number";
                  }

                }),
            TextFieldWidget(
                suffixIcon: IconButton(
                    onPressed: () {
                      isObscure = !isObscure;
                      setState(() {});
                    },
                    icon: isObscure
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility)),
                IsObscure: isObscure,
                controller: passwordController,
                hintText: "Password",
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter your Password";
                  }
                }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.05,
              child: ElevatedButton(
                onPressed: () {
                  validator(
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
                child: Text(
                  "Log in",
                  style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
            Center(
              child:  InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(RoutesNames.forget_password);
                },
                child: Text(
                  "ForgetPassword?",
                  style:TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700

                  ),
                ),

              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.12,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height*0.08,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RoutesNames.register_screen);
                    },
                    child: Text("Create new account",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: MyTheme.blackColor,
                        fontSize: 25
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          // horizontal: MediaQuery.of(context).size.width*0.25,
                          // vertical: MediaQuery.of(context).size.height*0.02,
                        ),
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                                width: 1
                            )
                        )
                    )
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  void validator() {
    if (formKey.currentState!.validate() == true) {
      // Navigator.of(context).pushNamed(HomePage.routeName);
    }
  }

}
