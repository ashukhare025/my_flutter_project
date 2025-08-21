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
          title: Text('Hello'),
        ),
        body: Container(
          color: Colors.blueGrey,
          margin: EdgeInsets.all(11),
          child: Padding(
            padding: EdgeInsets.only(top: 21,left: 34,bottom: 11,right: 34),
            child: Text('Hello World!',
              style: TextStyle(fontSize: 25,color: Colors.white),
              ),
          ),
        ),
    );
  }
}