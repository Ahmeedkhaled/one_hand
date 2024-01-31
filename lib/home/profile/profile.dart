import 'package:flutter/material.dart';
import 'package:one_hand/core/routes.dart';
import 'package:one_hand/home/profile/widget/profile_header.dart';
import 'package:one_hand/home/profile/widget/profile_info.dart';
import 'package:one_hand/home/profile/widget/profile_section.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BuildHeader(),
                const BuildProfileInfo(),
                BuildSection(
                  title: "My Products",
                  count: "102",
                  onTap: () {},
                ),
                const Divider(thickness: 1, color: Color(0xffBAB1B1)),
                BuildSection(title: "My Jobs", count: "904", onTap: () {}),
                const Divider(thickness: 1, color: Color(0xffBAB1B1)),
                BuildSection(title: "Notifications", count: null, onTap: () {}),
                const Divider(thickness: 1, color: Color(0xffBAB1B1)),
                BuildSection(
                    title: "Log Out",
                    count: null,
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(RoutesNames.loginScreen);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
