import 'package:flutter/material.dart';

import 'flash_screen.dart';
import 'home_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
        useMaterial3: false,
        fontFamily: 'FontMain',
      ),
      home: HomeScreen(),
    );
  }
}
