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
          title: Text('myApp'),
        ),
        body: Center(
          child: RichText(text: TextSpan(
            style: TextStyle(
              color: Colors.grey,fontSize: 21
            ),
            children:<TextSpan> [
              TextSpan(
                text: 'Hello '),
              TextSpan(text: 'World! ',
                  style: TextStyle(fontSize: 34,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold )),
              TextSpan(
                text: ' welcome to',
              ),
              TextSpan(text: ' Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 43,
                      color: Colors.orange,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'FontMain' )
              )

            ]
          )),
        )
    );
  }
}