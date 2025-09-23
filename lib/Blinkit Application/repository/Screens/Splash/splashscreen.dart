import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/Blinkit%20Application/repository/Screens/b_login.dart';
import 'package:my_project/Blinkit%20Application/repository/widget/screenhelper.dart';
import 'package:my_project/constants/app_color.dart';

class BlinkitSplash extends StatefulWidget {
  const BlinkitSplash({super.key});

  @override
  State<BlinkitSplash> createState() => _BlinkitSplashState();
}

class _BlinkitSplashState extends State<BlinkitSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BlinkitLogin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorScaffold,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ScreenHelper.CustomImage(img: "splash.png")],
        ),
      ),
    );
  }
}
