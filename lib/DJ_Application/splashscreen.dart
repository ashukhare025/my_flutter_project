import 'dart:async';

import 'package:flutter/material.dart';

import 'dj_login_screen.dart';

class DjSplash extends StatefulWidget {
  const DjSplash({super.key});

  @override
  State<DjSplash> createState() => _DjSplashState();
}

class _DjSplashState extends State<DjSplash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DjLoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0XFF14BBC6), Color(0XFFDB00D5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset('assets/DJ/group.png', height: 143.5, width: 350),
            SizedBox(height: 35),
            Image.asset(
              'assets/DJ/_7b481d43-e709-49ac-97a6-6b936187f2f5-removebg-preview 1.png',
            ),
            SizedBox(height: 50),

            Column(
              children: [
                Text(
                  'ENJOY PARTY WITH YOUR',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                ),
              ],
            ),
            Text(
              'FAVOURITE TRACKS',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
