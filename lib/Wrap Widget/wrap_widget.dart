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
          backgroundColor: Colors.orange,
          title: Text('Hello'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 11,
            runSpacing: 11,
            children: [
              Container(
                width: 70,
                height: 70,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.brown,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.blue,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.orange,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.black,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.purpleAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.green,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.limeAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.indigo,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.yellowAccent,
              ), Container(
                width: 70,
                height: 70,
                color: Colors.amberAccent,
              ),
              Container(
                width: 70,
                height: 70,
                color: Colors.red,
              ),
            ],
          ),
        )
    );
  }
}