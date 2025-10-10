import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/Instagram-Application/Widget/uiwidget.dart';

import '../login/insta_login.dart';

class InstaSpalshScreen extends StatefulWidget {
  const InstaSpalshScreen({super.key});

  @override
  State<InstaSpalshScreen> createState() => _InstaSpalshScreenState();
}

class _InstaSpalshScreenState extends State<InstaSpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => InstaLoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiWidget.customImage(imgurl: 'logo.png'),
            UiWidget.customImage(imgurl: 'Instagram.png'),
          ],
        ),
      ),
    );
  }
}
