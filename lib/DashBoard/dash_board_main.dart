import 'package:flutter/material.dart';
import 'package:my_project/DashBoard/dash_board_screen.dart';

void main() {
  runApp(DashBoard());
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dash Board Screen",
      debugShowCheckedModeBanner: false,
      home: DashBoardScreenUi(),
    );
  }
}
