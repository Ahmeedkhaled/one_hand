import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/images.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/OneHand.png"),
                Image.asset(
                  AppImages.appLogo,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
