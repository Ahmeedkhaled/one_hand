import 'package:flutter/material.dart';
import 'package:one_hand/core/images.dart';
import 'package:one_hand/my_theme.dart';

class BlogFooter extends StatelessWidget{
  const BlogFooter({super.key});

  @override
  Widget build(BuildContext context) {
  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.004,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: MyTheme.blackColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.likeLogo),
            Image.asset(AppImages.commentLogo),
            Image.asset(AppImages.shareLogo),
          ],
        ),
      ),
    );
  }

}