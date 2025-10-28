import 'package:flutter/material.dart';
import 'package:my_project/ApiDog/api_home.dart';

void main() {
  runApp(ApiMainScreen());
}

class ApiMainScreen extends StatelessWidget {
  const ApiMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ApiPost());
  }
}
