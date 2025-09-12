import 'package:flutter/material.dart';

void main() {
  runApp(ListViewScreen());
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView & ListTile',
      home: ListTileScreen(),
    );
  }
}

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  List<int> numbers = [1, 3, 5, 6, 7, 8, 9, 10, 11];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: ListView(
        // padding: EdgeInsets.all(20),
        // children: [

        // For Loop

        //   // for (int i = 0; i <= 10; i++)
        //   // for (int i in numbers)
        //   //   Container(
        //   //     height: 100,
        //   //     color: Colors.indigo,
        //   //     margin: EdgeInsets.symmetric(vertical: 10),
        //   //     alignment: Alignment.center,
        //   //     child: Text(i.toString(), style: TextStyle(color: Colors.white)),
        //   //   ),
        //
        //   //ListView step-2
        //
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //   // Container(
        //   //   color: Colors.red,
        //   //   width: 50,
        //   //   margin: EdgeInsets.symmetric(horizontal: 5),
        //   // ),
        //
        //   //ListView step-1
        //
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        //   // Container(
        //   //   color: Colors.blue,
        //   //   height: 100,
        //   //   margin: EdgeInsets.symmetric(vertical: 10),
        //   // ),
        // ],
        children: [
          ListTile(
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          ),
          ListTile(
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          ),
          ListTile(
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          ),
          ListTile(
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          ),
          ListTile(
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          ),
          ListTile(
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            leading: CircleAvatar(),
            trailing: Icon(Icons.done),
          ),
        ],
      ),
    );
  }
}
