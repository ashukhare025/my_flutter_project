import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Container(
          height: 300,
          width: 300,
          color: Colors.orange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text('R1', style: TextStyle(fontSize: 20)
                ),
                Text('R2', style: TextStyle(fontSize: 20)
                ),
                Text('R3', style: TextStyle(fontSize: 20)
                ),
                Text('R4', style: TextStyle(fontSize: 20)
                ),
                Text('R5', style: TextStyle(fontSize: 20)
                ),
              ],
              ),
              Text('A', style: TextStyle(fontSize: 20)
              ),
              Text('B', style: TextStyle(fontSize: 20)
              ),
              Text('C', style: TextStyle(fontSize: 20)
              ),
              Text('D', style: TextStyle(fontSize: 20)
              ),
              Text('E', style: TextStyle(fontSize: 20)
              ),
              ElevatedButton(onPressed: (){
              },
                  child: Text('Click')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
