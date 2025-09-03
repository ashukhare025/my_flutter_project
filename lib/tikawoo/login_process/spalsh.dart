import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/custom_image.dart';
import 'package:my_project/tikawoo/login_process/tikawoo_first.dart';

class TwSplashScreen extends StatefulWidget {
  const TwSplashScreen({super.key});

  @override
  State<TwSplashScreen> createState() => _TwSplashScreenState();
}

class _TwSplashScreenState extends State<TwSplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Twscreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFFFFFFF),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 100),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image.demo, height: 200, width: 200),
                  SizedBox(height: 20),
                  Image.asset(image.dummyy, height: 200, width: 200),
                ],
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Version 1.0.1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
