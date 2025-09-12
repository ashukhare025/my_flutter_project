import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp  extends StatelessWidget  {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
            headlineSmall: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic )
        )

      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          Text('Text 1',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.orange),),
          Text('Text 2',style: Theme.of(context).textTheme.titleSmall,),
          Text('Text 3',style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.lightGreen),),
          Text('Text 4',style: Theme.of(context).textTheme.titleSmall,),
        ]
      ),
    );
  }
}