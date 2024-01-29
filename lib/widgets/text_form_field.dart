import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';

class TextFieldWidget extends StatelessWidget {
  String? hintText;
  Widget? suffixIcon;
  bool? IsObscure;
  var keyBoardType;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextFieldWidget ({
    required this.controller,
    this.IsObscure=false,this.
    keyBoardType=TextInputType.text,
    required this.hintText,
    required this.validator,
    this.suffixIcon
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            style: TextStyle(
              color: MyTheme.blackColor
            ),
            validator: validator,
            controller:controller ,
            obscureText:IsObscure??false ,
            keyboardType:keyBoardType ,
            decoration: InputDecoration(
                fillColor: const Color(0xffEEEEEE),
                filled: true,
                suffixIcon:suffixIcon ,
                border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(15),
                  borderSide: BorderSide.none
                ),
                hintText: hintText,
                focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius:BorderRadius.circular(15)
                )
            ),
          ),
        ],
      ),
    );
  }
}
