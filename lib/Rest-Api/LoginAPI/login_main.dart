import 'package:flutter/material.dart';
import 'package:my_project/Rest-Api/LoginAPI/post_home_api.dart';


void main() {
  runApp(LoginApiScreen());
}

class LoginApiScreen extends StatelessWidget {
  const LoginApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostHomeApiScreen(),
    );
  }
}
