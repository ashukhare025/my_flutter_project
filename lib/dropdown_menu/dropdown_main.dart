import 'package:flutter/material.dart';
import 'package:my_project/dropdown_menu/dropdown_helper.dart';

void main() {
  runApp(DropDownScreen());
}

class DropDownScreen extends StatelessWidget {
  const DropDownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DropDown Menu",
      debugShowCheckedModeBanner: false,
      home: DropDownHelper(),
    );
  }
}
