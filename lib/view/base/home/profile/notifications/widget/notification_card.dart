import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_hand/my_theme.dart';

class NotificationCard extends StatelessWidget {
   String? title;
   String? image;
   String? content;
   List<Widget> buttons;

   NotificationCard({
    super.key,
    required this.title,
    required this.image,
    required this.content,
    required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            title??'',
            style: GoogleFonts.quicksand(
              textStyle: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          decoration: BoxDecoration(
            color: MyTheme.blackColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(image??""),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    content??"",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: buttons,
              )
            ],
          ),
        ),
      ],
    );
  }
}