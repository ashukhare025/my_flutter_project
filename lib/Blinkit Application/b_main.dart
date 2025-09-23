import 'package:flutter/material.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/Splash/splashscreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blinkit",
      home: BlinkitSplash(),
    );
  }
}
