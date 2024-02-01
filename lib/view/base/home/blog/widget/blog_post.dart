import 'package:flutter/material.dart';
import 'package:one_hand/my_theme.dart';
import 'package:one_hand/view/base/home/blog/widget/blog_post_header.dart';

class BlogPost extends StatelessWidget{
  const BlogPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: MyTheme.blackColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BlogPostHeader(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita quia pariatur optio quos saepe quis.",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            "http://www.google.com",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: const Color(0xff8E8E8E)),
          ),
        ],
      ),
    );
  }

}