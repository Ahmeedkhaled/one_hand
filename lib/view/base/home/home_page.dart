import 'package:flutter/material.dart';
import 'package:one_hand/home/blog/blog.dart';
import 'package:one_hand/view/base/home/jobs/jobs.dart';
import 'package:one_hand/view/base/home/product/product.dart';
import 'package:one_hand/view/base/home/profile/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Image.asset("assets/images/blog.png"),
            title: const Text("Blogs"),
            selectedColor: Colors.black,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Image.asset("assets/images/product.png"),
            title: const Text("Product"),
            selectedColor: Colors.black,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Image.asset("assets/images/jobs.png"),
            title: const Text("Job"),
            selectedColor: Colors.black,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.black,
          ),
        ],
      ),
      body: tabs[_selectedIndex],
    );
  }

  List<Widget> tabs = [
    const Blog(),
    const Product(),
    const Jobs(),
    const Profile()
  ];
}
