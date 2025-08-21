import 'package:flutter/material.dart';
import 'package:my_project/signup_ui_pr/home_screen.dart';
import 'package:my_project/signup_ui_pr/forgot_password_screen.dart';
import 'package:my_project/signup_ui_pr/login_screen.dart';
import 'package:my_project/signup_ui_pr/signup_screen.dart';



void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login % Signup',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: '/login',
      routes: {
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => const SignUpScreen(),
        '/forgot-password': (_) => const ForgotPasswordScreen(),
        '/home': (_) => const HomeScreen(),
      },
    );
  }
}

