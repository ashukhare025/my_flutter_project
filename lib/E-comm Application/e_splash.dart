import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/E-comm%20Application/e_boarding_screen.dart';

class EcomSplash extends StatefulWidget {
  const EcomSplash({super.key});

  @override
  State<EcomSplash> createState() => _EcomSplashState();
}

class _EcomSplashState extends State<EcomSplash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => EboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0XFFFFFFFF),
        width: double.infinity,

        height: double.infinity,
        child: Image.asset('assets/Ecomm/Splash.jpg'),
      ),
    );
  }
}
