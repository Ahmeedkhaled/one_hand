import 'package:flutter/material.dart';
import 'package:one_hand/home/blog/widget/blog_footer.dart';
import 'package:one_hand/home/blog/widget/blog_header.dart';
import 'package:one_hand/home/blog/widget/blog_post.dart';
import 'package:one_hand/home/blog/widget/blog_search.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const BlogHeader(),
                const BlogSearch(),
                const BlogPost(),
                const BlogFooter(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                const BlogPost(),
                const BlogFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
