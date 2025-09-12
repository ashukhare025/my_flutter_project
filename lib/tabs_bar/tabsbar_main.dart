import 'package:flutter/material.dart';
import 'package:my_project/tabs_bar/Screens/tabs_bar_2.dart';


void main() {
  runApp(TabsScreen());
}

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tabs",
      debugShowCheckedModeBanner: false,
      home: TabsBarScreen2(),
    );
  }
}
