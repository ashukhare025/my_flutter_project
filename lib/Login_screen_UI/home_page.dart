import 'package:flutter/material.dart';
import 'package:my_project/Login_screen_UI/My_Form.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tracker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/image/shape7.png'),
          SizedBox(height: 20),
          SingleChildScrollView(padding: EdgeInsets.only(left: 40, right:40),
              child: Column(
                children: [
                  Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  ),
                  SizedBox(height: 15),
                  MyForm(title: 'Email', icon: Icons.email_outlined),
                  SizedBox(height:10),
                  TextFormField(decoration: InputDecoration(
                    label: Icon(Icons.lock_outline_rounded,size: 20,),
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  ),
                  Row(
                    children: [
                      Checkbox(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)
                      ),
                        side: BorderSide(
                            color: Colors.orange
                        ),
                        checkColor: Colors.white,
                        activeColor: Colors.orange,
                        value: tracker, onChanged:(value){
                          setState(() {
                            tracker = !tracker;
                          });
                        },
                      ),
                      Text('Remember me',
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),)
                    ],
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 300,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Center(child: Text(' Login',style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,),),
                          ),
                          SizedBox(height: 10)
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [Row(mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
            ),
        ],
      ),
    );
  }
}