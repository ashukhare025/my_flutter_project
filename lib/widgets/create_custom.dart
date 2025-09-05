import 'package:flutter/material.dart';
import 'package:my_project/widgets/rounded_btn.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text('Hello')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnname: 'Play',
                icon: Icon(Icons.play_arrow),
                callback: () {
                  print('Playing!!');
                },
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
            Container(height: 11),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnname: 'Press',
                callback: () {
                  print('Playing!!');
                },
                bgColor: Colors.orange,
                textStyle: TextStyle(fontSize: 21),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
