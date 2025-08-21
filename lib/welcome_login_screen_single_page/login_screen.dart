import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          width: 393,
          child: SingleChildScrollView(child: Column(
            children: [SizedBox(height: 20 ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Login Now',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 30,color: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Please login or sign up to continue using our app',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14) ,
                  textAlign: TextAlign.left),
              SizedBox(height: 40),
              Text('Enter via Social Networks',
                style: TextStyle(color: Colors.deepPurpleAccent,
                    fontSize: 17,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Center(child: Icon(Icons.facebook,size: 40,)
                ),
                  SizedBox(width: 40),
                  Icon(Icons.mail,size:40)
                ],
              ),
              SizedBox(height: 20),
              Text('or login with email',
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(decoration: InputDecoration(
                    hintText: 'Enter your username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password', border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(alignment: Alignment.centerRight,
                    child: Text('Forgot Password?',
                      style: TextStyle(color: Colors.blue), // Optional styling
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                child: Text('Login',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,color: Colors.white),
                ),
                onPressed: () {
                  print('Press Button');},
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Don’t have an account?',
                  style: TextStyle(fontSize: 13,
                      fontWeight: FontWeight.bold,color: Colors.black),
                ),
                  TextButton(onPressed: (){ print('Press Login');},
                    child: Text('Sign up',
                      style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}