import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme
                .of(context)
                .colorScheme
                .inversePrimary,
            title: Text('Range'),
        ),
        body: Center(
          child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 20,
            activeColor: Colors.orange,
            inactiveColor: Colors.orange.shade100,
            min: 0,
            max: 100,
            onChanged: (newValue){
              values = newValue;
              print('${newValue.start},${newValue.end}');
              setState((){
              });
              },
          ),
        ),
    );
  }
}