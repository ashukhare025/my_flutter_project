import 'package:flutter/material.dart';
import 'package:my_project/MultiDropDown/multi_dropdown.dart';

void main() {
  runApp(MultiDropDown());
}

class MultiDropDown extends StatelessWidget {
  const MultiDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drop Down",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MultiDropDownScreen(),
    );
  }
}
