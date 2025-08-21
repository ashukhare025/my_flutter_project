import 'package:flutter/material.dart';
import 'package:my_project/switching_screen/switch_screen.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Intro'),
       backgroundColor: Colors.orange,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [Text('Welcome',style: TextStyle(
           fontSize: 34,
           fontWeight: FontWeight.bold,
         ),),
           SizedBox(
             height: 11,
           ),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),
             ));
           }, child: Text('Next'))
         ],
       ),
     ),
   );
  }
}