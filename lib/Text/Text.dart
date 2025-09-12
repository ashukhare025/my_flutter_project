import 'package:flutter/material.dart';

void main() {
  runApp(const MyText());
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});


  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Container'),
      ),
      body: Text('Hello DevOps',
        style: TextStyle(fontSize: 25,
            color: Colors.lightBlue,
            fontWeight: FontWeight.w800,
            backgroundColor: Colors.deepOrangeAccent ),
      ),
    );
  }
}