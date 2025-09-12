import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp  extends StatelessWidget  {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello',),
        backgroundColor: Colors.blue,
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 300,
            minWidth: 200,
            minHeight: 100,
            maxHeight: 300

          ),
          child: ElevatedButton(
              onPressed: (){

              }, child: Text('Click')))
    );
  }
}