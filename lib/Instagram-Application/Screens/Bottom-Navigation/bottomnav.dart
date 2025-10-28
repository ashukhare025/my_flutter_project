import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/Instagram-Application/Screens/Heart/heart_screen.dart';
import 'package:my_project/Instagram-Application/Screens/Insta-Home/insta_home.dart';
import 'package:my_project/Instagram-Application/Screens/Insta-Profile/insta_profile.dart';
import 'package:my_project/Instagram-Application/Screens/Post/post_screen.dart';

import '../Insta-Search/insta_search.dart';

class InstaBottomScreen extends StatefulWidget {
  const InstaBottomScreen({super.key});

  @override
  State<InstaBottomScreen> createState() => _InstaBottomScreenState();
}

class _InstaBottomScreenState extends State<InstaBottomScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    InstaHomeScreen(),
    InstaSearchScreen(),
    InstaPostScreen(),
    InstaHeartScreen(),
    InstaProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_app),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Heart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
