import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_project/splash_screen/dashboard_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    print("This is the correct DashBoardScreen");

    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => DashBoardScreen()
          ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Classico',style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white
        ),
        ),
        ),
      ),
    );

  }
}