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

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {

  callBack(){
    print('Clicked!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('DashBoard'),
        ),
        body: ElevatedButton(
          onPressed: callBack,
          child: Text('Click Me')
        )
    );
  }
}