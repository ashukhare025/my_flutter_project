import 'package:flutter/material.dart';

import 'api_home.dart';

void main() {
  runApp(ApiApp());
}

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ApiHome());
  }
}
