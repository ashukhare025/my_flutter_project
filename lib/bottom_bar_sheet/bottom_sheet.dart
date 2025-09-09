import 'package:flutter/material.dart';
import 'package:my_project/bottom_bar_sheet/bottom_bar.dart';

void main() {
  runApp(BottomSheet());
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Bar',
      home: BottomBar(),
    );
  }
}
