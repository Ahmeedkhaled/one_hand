import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';

class BuildProfileInfo extends StatelessWidget {
  const BuildProfileInfo({super.key});
 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset("assets/images/person1.png"),
            SizedBox(width: MediaQuery.of(context).size.width * 0.04),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "#0Deo5bR",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: MyTheme.blackColor),
                ),
                Text(
                  "From Egypt, Alex",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: MyTheme.blackColor, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(

          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08,
              vertical: MediaQuery.of(context).size.height * 0.02,
            ),
            backgroundColor: const Color(0xffD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            "Edit Profile",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: MyTheme.blackColor, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
