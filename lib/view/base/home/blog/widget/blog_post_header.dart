import 'package:flutter/material.dart';
import 'package:one_hand/core/utils/images.dart';
class BlogPostHeader extends StatelessWidget{
  const BlogPostHeader({super.key});

  @override
  Widget build(BuildContext context) {
 return Row(
      children: [
        Image.asset(AppImages.personLogo),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
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
    );
  }

}