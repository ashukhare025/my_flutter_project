import 'package:flutter/material.dart';
import 'package:my_project/Navigation/n_home_screen.dart';

void main() {
  runApp(NaviScreen());
}

class NaviScreen extends StatelessWidget {
  const NaviScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation",
      home: NaviHomeScreen(),
    );
  }
}
