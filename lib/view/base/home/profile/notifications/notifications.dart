import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_hand/core/utils/images.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/view/base/home/profile/notifications/widget/notification_card.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Notifications",
                style: GoogleFonts.quicksand(
                  textStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 22,
                        color: MyTheme.blackColor,
                      ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              NotificationCard(
                title: "New",
                image: AppImages.personLogo,
                content: "##0Deo5bR introduce her \n CV to  your job.  ",
                buttons: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                        vertical: MediaQuery.of(context).size.height * 0.015,
                      ),
                      backgroundColor: const Color(0xffFFFFFF),
                    ),
                    child: Text(
                      "Decline",
                      style: GoogleFonts.quicksand(
                        textStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                                  color: MyTheme.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                        vertical: MediaQuery.of(context).size.height * 0.015,
                      ),
                      backgroundColor: const Color(0xffFFFFFF),
                    ),
                    child: Text(
                      "Accept",
                      style: GoogleFonts.quicksand(
                        textStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                                  color: MyTheme.blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.23,
                    decoration: BoxDecoration(
                      color: MyTheme.blackColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Image.asset(AppImages.personLogo),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Text(
                              "Your CV has been accepted ",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        InkWell(
                          onTap: (){
                            //go to your profile
                          },
                          child: Text(
                            "Tap  to view profile ",
                            style: GoogleFonts.quicksand(
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              // Repeat similar pattern for other notifications
            ],
          ),
        ),
      ),
    );
  }
}
