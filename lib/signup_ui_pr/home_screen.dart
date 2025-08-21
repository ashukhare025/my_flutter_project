import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0d1b2a),
      appBar: AppBar(
        backgroundColor: Color(0xff0d1b2a),
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Screen',
        style: TextStyle(color: Colors.white)),
      ),
    );
  }
}