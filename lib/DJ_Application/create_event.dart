import 'dart:ui';

import 'package:flutter/material.dart';

import 'my_event_list.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/DJ/girl.png', fit: BoxFit.cover),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(color: Colors.black.withOpacity(0)),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0XFF14BBC6).withOpacity(0.7),
                  Color(0XFFDB00D5).withOpacity(0.7),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 32),
                      Image.asset(
                        'assets/DJ/upload-image-svgrepo-com 1.png',
                        height: 85,
                        width: 85,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Upload Event Image',
                        style: TextStyle(
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'upload format jpg, png',
                        style: TextStyle(
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.text,
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
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: 'Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        hintText: 'City',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 120,
                        vertical: 10,
                      ),
                      backgroundColor: Colors.blue.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyEventScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Create Event',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MainFont',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
