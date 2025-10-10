import 'package:flutter/material.dart';

import 'home/navigation_main_home.dart';

void main() {
  runApp(NavigationScreen());
}

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationMainHome(),
    );
  }
}
