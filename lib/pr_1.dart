import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Page',
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text('Hello, Ashu',
              style: TextStyle(fontSize: 40,
                  color: Colors.blue,
                  backgroundColor: Colors.black)
          ),
        ),
      ),
    );
  }
}