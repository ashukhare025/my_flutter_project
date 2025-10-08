import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_login.dart';

class FirebaseLoginHomeScreen extends StatefulWidget {
  const FirebaseLoginHomeScreen({super.key});

  @override
  State<FirebaseLoginHomeScreen> createState() =>
      _FirebaseLoginHomeScreenState();
}

class _FirebaseLoginHomeScreenState extends State<FirebaseLoginHomeScreen> {
  FirebaseAuth auth = FirebaseAuth.instance;

  void logout() async {
    try {
      await auth.signOut();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => FireBaseLoginScreen()),
        (value) => false,
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Home'),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                logout();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
