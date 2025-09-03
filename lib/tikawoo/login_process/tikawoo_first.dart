import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/sign_up_process/create_account.dart';
import 'package:my_project/tikawoo/custom_image.dart';
import 'package:my_project/tikawoo/login_process/login_page.dart';
import 'package:my_project/tikawoo/login_process/spalsh.dart';
import 'package:my_project/widget/uihelper.dart';

void main() {
  runApp(TwLogin());
}

class TwLogin extends StatelessWidget {
  const TwLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tikawoo',
      debugShowCheckedModeBanner: false,
      home: TwSplashScreen(),
    );
  }
}

class Twscreen extends StatelessWidget {
  const Twscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFFFFFFF),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image.Convex),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccount()),
                  );
                },
                child: Text(
                  'New Registration',
                  style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
                ),
              ),
              SizedBox(height: 80),
              UiHelper.CustomText(
                text: "Copyright 2024 Chiripal Group.",
                height: 12,
                fontweight: FontWeight.bold,
              ),
              SizedBox(height: 5),
              UiHelper.CustomText(
                text: "App Rights Reserved",
                height: 12,
                fontweight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
