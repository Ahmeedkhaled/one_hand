import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/images.dart';

class Jobs extends StatelessWidget {
  const Jobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
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
