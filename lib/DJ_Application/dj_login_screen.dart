import 'package:flutter/material.dart';
import 'package:my_project/DJ_Application/sing_up.dart';
import 'package:my_project/DJ_Application/splashscreen.dart';

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

class DjLoginScreen extends StatelessWidget {
  const DjLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'), backgroundColor: Color(0XFF14BBC6)),
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
              SizedBox(height: 20),
              Image.asset('assets/DJ/group.png', height: 143.5, width: 350),
              SizedBox(height: 35),
              Image.asset(
                'assets/DJ/_7b481d43-e709-49ac-97a6-6b936187f2f5-removebg-preview 1.png',
              ),
              SizedBox(height: 30),
              Text(
                'login Dj',
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'FontMain',
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '  Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    labelStyle: TextStyle(
                      color: Color(0XFF383838),
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: '  Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                    labelStyle: TextStyle(
                      color: Color(0XFF383838),
                      fontFamily: 'FontMain',
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 5),
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
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 170, vertical: 15),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyEventScreen()),
                  );
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
              SizedBox(height: 15),
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
