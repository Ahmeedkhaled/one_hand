import 'package:flutter/material.dart';
import 'package:one_hand/core/images.dart';
import 'package:one_hand/my_theme.dart';

// ignore: must_be_immutable
class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  List<String> searchs = ["Search", "Flutter", "BackEnd", "FrontEnd"];

  String selectedSearch = "Search";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
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
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    color: const Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButton(
                      padding: const EdgeInsets.all(15),
                      icon: null,
                      isExpanded: true,
                      underline: const Text(""),
                      value: selectedSearch,
                      items: searchs
                          .map((search) => DropdownMenuItem(
                              value: search,
                              child: Text(
                                search,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(color: MyTheme.blackColor),
                              )))
                          .toList(),
                      onChanged: (String? search) {
                        setState(() {
                          selectedSearch = search!;
                        });
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      color: MyTheme.blackColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppImages.personLogo),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "#0Deo5bR",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                "16m",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit.expedita quia pariatur optio quos saepe quis.",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        "http:www.google.com",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: const Color(0xff8E8E8E)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      color: MyTheme.blackColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(AppImages.likeLogo),
                      Image.asset(AppImages.commentLogo),
                      Image.asset(AppImages.shareLogo),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      color: MyTheme.blackColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppImages.personLogo),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "#0Deo5bR",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Text(
                                "16m",
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit.expedita quia pariatur optio quos saepe quis.",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        "http:www.google.com",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: const Color(0xff8E8E8E)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      color: MyTheme.blackColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(AppImages.likeLogo),
                      Image.asset(AppImages.commentLogo),
                      Image.asset(AppImages.shareLogo),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
