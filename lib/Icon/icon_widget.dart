import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_circle_fill_outlined,size: 50,
                        color: Colors.orange,),
                SizedBox(
                  width: 11,
                ),
                FaIcon(FontAwesomeIcons.googlePay,size: 50,)
              ],
            ),
        ),
    );
  }
}