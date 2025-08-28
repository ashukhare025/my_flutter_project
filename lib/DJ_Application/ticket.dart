import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

import 'contact_us.dart';
import 'create_event.dart';
import 'dj_profile.dart';
import 'my_event_list.dart';
import 'song_request.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF14BBC6),
        title: Center(
          child: Text('Ticket', style: TextStyle(color: Colors.white)),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: Icon(Icons.grid_view, color: Colors.white),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF110A9B),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    minRadius: 40,
                    backgroundColor: Color(0xFF070180),
                    child: Text(
                      'MJ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'AntonSC',
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'MICHAL JOHNSON',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'AntonSC',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "My Event's",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyEventScreen()),
                );
              },
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "Create Event",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateEvent()),
                );
              },
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "Plan List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {},
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "Song Request",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SongRequest()),
                );
              },
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DjProfile()),
                );
              },
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "App Review",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {},
            ),
            Divider(thickness: 0),
            ListTile(
              title: Text(
                "Term's & Condition",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'App Version 3.2.1',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FontMain',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/DJ/girl.png', fit: BoxFit.cover),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(color: Colors.black.withOpacity(0)),
          ),

          Container(
            height: double.infinity,
            width: double.infinity,
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
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/DJ/stranger.jpg',
                        width: 130,
                        height: 130,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper.CustomText(
                                text: 'Ticket ID: 2563659',
                                height: 18,
                                fontweight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      UiHelper.CustomText(
                                        text: 'Email: jeane@beatfusion.com',
                                        height: 12,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: 8),
                              UiHelper.CustomText(
                                text: 'Message: lorem ipsum dolor sit amet',
                                height: 9,
                                color: Colors.white,
                              ),
                              UiHelper.CustomText(
                                text:
                                    'consectetur adipiscing elit.Donec quis arci a',
                                height: 9,
                                color: Colors.white,
                              ),
                              UiHelper.CustomText(
                                text: 'sem pretium eleifend',
                                height: 9,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/DJ/stranger.jpg',
                        width: 120,
                        height: 120,
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiHelper.CustomText(
                                text: 'Ticket ID: 2563659',
                                height: 18,
                                fontweight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      UiHelper.CustomText(
                                        text: 'Email: jeane@beatfusion.com',
                                        height: 12,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: 5),
                              UiHelper.CustomText(
                                text: 'Message: lorem ipsum dolor sit amet',
                                height: 9,
                                color: Colors.white,
                              ),
                              UiHelper.CustomText(
                                text:
                                    'consectetur adipiscing elit.Donec quis arci a',
                                height: 9,
                                color: Colors.white,
                              ),
                              UiHelper.CustomText(
                                text: 'sem pretium eleifend',
                                height: 9,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 65,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Color(0xFF0E0882),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Reply",
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Color(0xFF0E0882),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Ticket Resolve",
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
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
