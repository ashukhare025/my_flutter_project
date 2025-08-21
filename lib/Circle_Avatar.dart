import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp  extends StatelessWidget  {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red
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
          title: Text('DashBoard'),
        ),
        body: Center(
          child: CircleAvatar(
            backgroundColor: Colors.green,
            maxRadius: 60,
            child: SizedBox(
              width: 68,
              height: 68 ,
              child: Column(
                children: [
                  SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/user.png')),
                  Text('Name',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        )
    );
  }
}