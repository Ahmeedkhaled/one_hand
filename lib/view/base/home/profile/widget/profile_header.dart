import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/images.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key});
 
  
  @override
  Widget build(BuildContext context) {
      return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/OneHand.png"),
        Image.asset(
          AppImages.appLogo,
          width: MediaQuery.of(context).size.width * 0.2,
        ),
      ],
    );
  }
}
