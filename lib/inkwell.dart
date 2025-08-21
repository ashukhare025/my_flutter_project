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
          title: Text('Hello'),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print('Tapped on container');
            },
            onLongPress: (){
              print('Long Pressed on container');
            },
            onDoubleTap: (){
              print('Double-Tapped on container');
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Center(
                  child: InkWell(
                    onTap: (){
                      print('Text Widget Tapped');
                    },
                  child: Text(
                    'Click here',
                    style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),
                  ),
                  ),
              ),
            ),
          ),
        )
    );
  }
}