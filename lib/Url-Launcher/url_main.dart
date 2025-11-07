import 'package:flutter/material.dart';
import 'package:my_project/Url-Launcher/screen/home/home_screen.dart';

void main() {
  runApp(UrlMain());
}

class UrlMain extends StatelessWidget {
  const UrlMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UrlHomeScreen(),
    );
  }
}
