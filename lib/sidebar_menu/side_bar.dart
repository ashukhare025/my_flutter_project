import 'package:flutter/material.dart';
import 'package:my_project/sidebar_menu/side_bar_widget.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarScreen(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Home Screen'),
      ),
      body: Center(child: Text('HOME SCREEN')),
    );
  }
}
