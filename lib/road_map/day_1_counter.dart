import 'package:flutter/material.dart';

void main() {
  runApp(RoadMap());
}

class RoadMap extends StatelessWidget {
  const RoadMap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Road Map Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home:  MyRoadMap(),
    );
  }
}

class MyRoadMap extends StatefulWidget {
  const MyRoadMap({super.key});

  @override
  State<MyRoadMap> createState() => _MyRoadMapState();
}

class _MyRoadMapState extends State<MyRoadMap> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RoadMapPage')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('Left'), Text('right')],
          ),
          Text('counter: $counter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Container(height: 50, width: 50, color: Colors.blue),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child:  Text('+',style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
