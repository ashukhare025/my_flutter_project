import 'package:flutter/material.dart';
import 'Screens/Splash/insta_splash.dart';

void main() {
  runApp(InstaMainScreen());
}

class InstaMainScreen extends StatelessWidget {
  const InstaMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: InstaSpalshScreen(),
    );
  }
}
