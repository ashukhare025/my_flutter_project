import 'package:flutter/material.dart';
import 'package:my_project/camerapermissionhandler//camera_home.dart';

void main() {
  runApp(CameraHome());
}

class CameraHome extends StatelessWidget {
  const CameraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Access',
      debugShowCheckedModeBanner: false,
      home: CameraHomeScreen(),
    );
  }
}
