import 'package:flutter/material.dart';
import 'package:my_project/DJ_Application/sing_up.dart';
import 'package:my_project/DJ_Application/splashscreen.dart';

import 'Create_Event.dart';
import 'my_event_list.dart';

void main() {
  runApp(DjLoginPage());
}

class DjLoginPage extends StatelessWidget {
  const DjLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DjLogin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: DjSplash(),
    );
  }
}

class DjLoginScreen extends StatefulWidget {
  const DjLoginScreen({super.key});

  @override
  State<DjLoginScreen> createState() => _DjLoginScreenState();
}

class _DjLoginScreenState extends State<DjLoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Image.asset('assets/DJ/group.png', height: 143.5, width: 350),
              SizedBox(height: 20),
              Image.asset(
                'assets/DJ/_7b481d43-e709-49ac-97a6-6b936187f2f5-removebg-preview 1.png',
              ),
              SizedBox(height: 20),
              Text(
                'login Dj',
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'FontMain',
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'FontMain',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                  backgroundColor: Color(0xFF0E0882),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                onPressed: () {
                  String email = emailController.text.trim();
                  if (email.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyEventScreen()),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateEvent()),
                    );
                  }
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'FontMain',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have already account?',
                    style: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'FontMain',
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpTv()),
                      );
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        color: Color(0XFFFFFFFF),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'FontMain',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
