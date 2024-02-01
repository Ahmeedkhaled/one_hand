import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  String? fieldName;
  String? hintText;
  Widget? suffixIcon;
  bool? isObscure;
  // ignore: prefer_typing_uninitialized_variables
  var keyBoardType;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextFieldWidget(
      {super.key,
      this.fieldName = '',
      required this.controller,
      this.isObscure = false,
      this.keyBoardType = TextInputType.text,
      required this.hintText,
      required this.validator,
      this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(fieldName ?? "",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: MyTheme.blackColor)),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          TextFormField(
            style: TextStyle(color: MyTheme.blackColor),
            validator: validator,
            controller: controller,
            obscureText: isObscure ?? false,
            keyboardType: keyBoardType,
            decoration: InputDecoration(
                fillColor: const Color(0xffEEEEEE),
                filled: true,
                suffixIcon: suffixIcon,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                hintText: hintText,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15))),
          ),
        ],
      ),
    );
  }
}
