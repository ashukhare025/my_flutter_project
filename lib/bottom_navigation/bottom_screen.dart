import 'package:flutter/material.dart';
import 'package:my_project/bottom_navigation/page_profile.dart';
import 'package:my_project/bottom_navigation/page_screen.dart';
import 'package:my_project/bottom_navigation/settings.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndexValue = 0;

  List ScreenList = [PageScreen(), SettingScreen(), PageProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Bar'), centerTitle: true),
      body: ScreenList[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            currentIndexValue = index;
          });
        },
        currentIndex: currentIndexValue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
