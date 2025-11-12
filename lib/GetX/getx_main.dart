import 'package:flutter/material.dart';
import 'package:my_project/GetX/screen/home/getx_home.dart';

void main() {
  runApp(GetxScreen());
}

class GetxScreen extends StatelessWidget {
  const GetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetxHomeScreen(),
    );
  }
}
