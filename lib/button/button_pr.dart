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
          title: Text('Hello Flutter'),
        ),
        body: TextButton(
          child: Text('Click Here!'),
          onPressed: (){
            print('Text Button Tap!');
          },
          onLongPress: () {
            print('Long Pressed!');
          },
        )
    );
  }
}