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

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Calculations'),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1+no2;
                          result = 'The sum of $no1 and $no2 is $sum';

                          setState(() {});
                        }, child: Text('add')),

                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var diff = no1-no2;

                          result = 'The Difference between $no1 and $no2 is $diff';

                          setState(() {});

                        }, child: Text('sub')),

                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var product = no1*no2;

                          result = 'The product of $no1 and $no2 is $product';

                          setState(() {});

                          }, child: Text('mult')),

                        ElevatedButton(onPressed: (){
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var times = no1/no2;

                          result = 'The $no1 can be divided by $no2 is ${times.toStringAsFixed(2)} times';

                          setState(() {});
                        }, child: Text('div')),
                      ],
                    ),
                  ),
                  
                  Padding(padding: EdgeInsets.all(21),
                    child: Text(result,style: TextStyle(fontSize: 25,color: Colors.white),),)
                ],
              ),
            ),
          ),
        )
    );
  }
}