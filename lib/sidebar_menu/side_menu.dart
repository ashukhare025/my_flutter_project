import 'package:flutter/material.dart';
import 'package:my_project/sidebar_menu/side_bar.dart';

void main() {
  runApp(SideMenu());
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Side Menu',
      debugShowCheckedModeBanner: false,
      home: SideBar(),
    );
  }
}
