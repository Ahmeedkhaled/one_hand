import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/images.dart';
import 'package:one_hand/my_theme.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<String> searchOptions = ["Search", "Flutter", "BackEnd", "FrontEnd"];

  String selectedSearch = "Search";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  items: searchOptions.map((search) {
                    return DropdownMenuItem(
                      value: search,
                      child: Text(
                        search,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: MyTheme.blackColor),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? search) {
                    setState(() {
                      selectedSearch = search!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
