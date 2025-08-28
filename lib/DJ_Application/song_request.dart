import 'dart:ui';

import 'package:flutter/material.dart';

import 'Create_Event.dart';
import 'contact_us.dart';
import 'dj_profile.dart';
import 'my_event_list.dart';
import 'plan.dart';

class SongRequest extends StatefulWidget {
  const SongRequest({super.key});

  @override
  State<SongRequest> createState() => _SongRequestState();
}

class _SongRequestState extends State<SongRequest> {
  bool isSwitched = false;

  final List<Map<String, String>> songs = const [
    {
      "title": "The stronger inside you",
      "artist": "Jeane Lebras",
      "duration": "05:29",
      "image": "assets/DJ/stranger.jpg",
      "status": "Accepted Left 5:45",
    },
    {
      "title": "Take care of you",
      "artist": "Admina Thembi",
      "duration": "03:15",
      "image": "assets/DJ/takecare.jpg",
    },
    {
      "title": "The stronger inside you",
      "artist": "Jeane Lebras",
      "duration": "05:29",
      "image": "assets/DJ/stranger.jpg",
    },
    {
      "title": "Take care of you",
      "artist": "Admina Thembi",
      "duration": "03:15",
      "image": "assets/DJ/takecare.jpg",
    },
    {
      "title": "Take care of you",
      "artist": "Admina Thembi",
      "duration": "03:15",
      "image": "assets/DJ/takecare.jpg",
    },
    {
      "title": "The stronger inside you",
      "artist": "Jeane Lebras",
      "duration": "05:29",
      "image": "assets/DJ/stranger.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF14BBC6),
        title: Center(child: Text('Song Request list')),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Plan()),
                );
              },
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                        activeColor: Color(0XFF0E0882),
                        inactiveThumbColor: Color(0XFF0E0882),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Online',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'FontMain',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/DJ/stranger.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Stranger inside you',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Jeane Lebras',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    SizedBox(width: 100),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Accepted',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'FontMain',
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Left:5:45',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '5:29',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/DJ/takecare.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Stranger inside you',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Admina Thembi',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '3:15',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0XFFFFFFFF),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 30,
                                        color: Color(0xFF0E0882),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/DJ/stranger.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Stranger inside you',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Jeane Lebras',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0XFFFFFFFF),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 30,
                                        color: Color(0xFF0E0882),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '5:29',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/DJ/takecare.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Stranger inside you',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Admina Thembi',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '3:15',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0XFFFFFFFF),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 30,
                                        color: Color(0xFF0E0882),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/DJ/takecare.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Stranger inside you',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Admina Thembi',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '3:15',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0XFFFFFFFF),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 30,
                                        color: Color(0xFF0E0882),
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/DJ/stranger.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Stranger inside you',
                              style: TextStyle(
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Jeane Lebras',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Color(0XFFFFFFFF),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 25,
                                        color: Color(0xFF0E0882),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '5:29',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'FontMain',
                                        color: Color(0xFFFFFFFF),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
