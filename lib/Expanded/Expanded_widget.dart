import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp  extends StatelessWidget  {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('DashBoard'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.orange,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}