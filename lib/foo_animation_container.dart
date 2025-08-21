import 'package:flutter/material.dart';

void main() {
  runApp(const MyNew());
}

class MyNew extends StatelessWidget{
  const MyNew({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkedIn Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Foo Animations'),
        ),
        body: Column(
          children: [
            AnimatedContainer(
              width: 200,
              height: 100,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Animate'))
          ],
        ),
    );
  }
}