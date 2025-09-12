import 'package:flutter/material.dart';
import 'package:my_project/popup_menu/popup_screen.dart';

void main() {
  runApp(PopScreen());
}

class PopScreen extends StatelessWidget {
  const PopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PopUp Menu",
      home: PopMenu(),
    );
  }
}
