import 'package:flutter/material.dart';
import 'package:my_project/onboarding/onboarding_screen.dart';

void main() {
  runApp(BoardScreen());
}

class BoardScreen extends StatelessWidget {
  const BoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Board Screen",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: OnBoardingScreen(),
    );
  }
}
