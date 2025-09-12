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
        body: Wrap(
          direction: Axis.vertical,
          children: [
            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(onPressed: (){},
                  child: Text('Click'),
              ),
            ),

            SizedBox(
              width: 20 ,
              height: 50,
            ),

            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(onPressed: (){},
                child: Text('Click'),
              ),
            ),

            SizedBox(
              width: 50,
            ),

            SizedBox.square(
              dimension: 100,
              child: ElevatedButton(onPressed: (){},
                child: Text('Click'),
              ),
            ),
          ],
        ),
    );
  }
}