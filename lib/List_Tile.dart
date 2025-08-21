import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp  extends StatelessWidget  {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var arrNames = ['raman','rajesh','james','john','rahim','ram'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hello'),
      ),
      body: ListView.separated(itemBuilder: (context,index) {
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text('Number'),
          trailing: Icon(Icons.add),
        );
      },
      itemCount: arrNames.length,
        separatorBuilder: (context,index) {
        return Divider(height: 20,thickness: 1,);
        },
      )
    );
  }
}