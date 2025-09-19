import 'package:flutter/material.dart';
import 'package:my_project/ApiLogin/api_login.dart';

void main() {
  runApp(ApiMain());
}

class ApiMain extends StatelessWidget {
  const ApiMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: ApiLoginScreen(),
    );
  }
}
