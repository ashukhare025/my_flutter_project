import 'dart:async';

import 'package:flutter/material.dart';

import 'first_page.dart';

class WhatsAppScreen extends StatefulWidget{
  const WhatsAppScreen({super.key});

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomePageScreen()
          ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/what.png',
              height: 100,
              width: 100,),
              SizedBox(height: 260,),
              Padding(
              padding: const EdgeInsets.all(5),
              child: Text('from',style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16),),
            ),
              SizedBox(height: 120,
                child: Text('Meta',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 26),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}