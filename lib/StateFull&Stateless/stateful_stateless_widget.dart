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

  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count: $count',style: TextStyle(fontSize: 34),),
            ElevatedButton(onPressed: (){
              //count = count + 1;
              //count += 1;

              setState(() {
                count++;
                print(count);
              });

            }, child: Text('Increment Count'))
          ],
        ),
      ),
    );
  }
}