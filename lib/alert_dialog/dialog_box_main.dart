import 'package:flutter/material.dart';
import 'package:my_project/alert_dialog/dialog_screen.dart';

void main() {
  runApp(DialogBox());
}

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dialog ",
      debugShowCheckedModeBanner: false,
      home: DialogScreen(),
    );
  }
}
