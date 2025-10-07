import 'package:flutter/material.dart';

import 'api_login.dart';


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
