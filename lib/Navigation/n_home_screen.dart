import 'package:flutter/material.dart';
import 'package:my_project/Navigation/n_profile_screeen.dart';

class NaviHomeScreen extends StatelessWidget {
  const NaviHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> NaviProfileScreen()));
        }, child: Text("Next")),
      ),
    );
  }
}
