import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';

class BlogSearch extends StatefulWidget{
  const BlogSearch({super.key});

  @override
  State<BlogSearch> createState() => _BlogSearchState();
}

class _BlogSearchState extends State<BlogSearch> {
  List<String> searchOptions = ["Search", "Flutter", "BackEnd", "FrontEnd"];
  String selectedSearch = "Search";
  @override
  Widget build(BuildContext context) {
   return Container(
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
    );
  }
}