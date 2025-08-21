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

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    var arrColors = [Colors.red,
      Colors.orange,
      Colors.grey,
      Colors.yellow,
      Colors.pink,
      Colors.green,
      Colors.purpleAccent,
      Colors.brown];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('DashBoard'),
        ),
        body: GridView.builder(itemBuilder: (context, index) {
          return Container(color: arrColors[index],);
        },
          itemCount: arrColors.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11)),













      // /*GridView.count(crossAxisCount: 4,
    //     crossAxisSpacing: 11,
    //     mainAxisSpacing: 11,
    //     children: [
    //       Container(color: arrColors[0],),
    //       Container(color: arrColors[1],),
    //       Container(color: arrColors[2],),
    //       Container(color: arrColors[3],),
    //       Container(color: arrColors[4],),
    //       Container(color: arrColors[5],),
    //       Container(color: arrColors[6],),
    //       Container(color: arrColors[7],)
    //     ],)*/
    //     /*GridView.extent(maxCrossAxisExtent: 100,
    //       crossAxisSpacing: 11,
    //       mainAxisSpacing: 11,
    //       children: [ Container(color: arrColors[0],),
    //         Container(color: arrColors[1],),
    //         Container(color: arrColors[2],),
    //         Container(color: arrColors[3],),
    //         Container(color: arrColors[4],),
    //         Container(color: arrColors[5],),
    //         Container(color: arrColors[6],),
    //         Container(color: arrColors[7],)


    );
  }
}
