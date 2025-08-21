import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCardPage(),
    );
  }
}

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          elevation: 8),
      body: Center(
          child: Padding(padding: EdgeInsets.all(20),
            child: Card(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
              ),
            ),
          ),
      ),
    );
  }
}
