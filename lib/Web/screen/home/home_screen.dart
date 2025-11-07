import 'package:flutter/material.dart';

import '../second/second_screen.dart';

class HomeWebScreen extends StatelessWidget {
  const HomeWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Column(
      //     spacing: 15,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/second');
      //         },
      //         child: Text('Second Screen'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/third');
      //         },
      //         child: Text('third Screen'),
      //       ),
      //     ],
      //   ),
      // ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(10),
        children: [
          for (int i = 1; i < 100; i++) Container(color: Colors.green),
        ],
      ),
    );
  }
}
