import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/firebase_series/FireBaseLoginSign/firebase_login.dart';
import 'package:my_project/firebase_series/FireBaseLoginSign/firebase_login_home_screen.dart';

class FireBaseSplash extends StatefulWidget {
  const FireBaseSplash({super.key});

  @override
  State<FireBaseSplash> createState() => _FireBaseSplashState();
}

class _FireBaseSplashState extends State<FireBaseSplash> {
  FirebaseAuth auth = FirebaseAuth.instance;

  void nextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    if (auth.currentUser == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FireBaseLoginScreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirebaseLoginHomeScreen()),
      );
    }
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: FlutterLogo(size: 100)));
  }
}
