import 'package:flutter/material.dart';
import 'package:my_project/bottom_navigation/bottom_screen.dart';

void main() {
  runApp(BottomNaviScreen());
}

class BottomNaviScreen extends StatelessWidget {
  const BottomNaviScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BottomNavi',
      home: BottomScreen(),
    );
  }
}

