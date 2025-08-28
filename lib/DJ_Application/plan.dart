import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

import 'Create_Event.dart';
import 'contact_us.dart';
import 'dj_profile.dart';
import 'my_event_list.dart';
import 'song_request.dart';

class Plan extends StatelessWidget {
  const Plan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF14BBC6),
        title: Center(
          child: Text(
            'Subscription Plan',
            style: TextStyle(color: Colors.white),
          ),
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
                  SizedBox(height: 20),
                  UiHelper.CustomText(
                    text: 'Plan List',
                    height: 25,
                    fontweight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: '62% OFF',
                    height: 30,
                    fontweight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  UiHelper.CustomText(
                    text: 'Get this exclusive limited offer!',
                    height: 14,
                    fontweight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(height: 15),
                  UiHelper.CustomText(
                    text: 'SELECT YOUR PLAN',
                    height: 16,
                    fontweight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 80,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' 1 Month',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'FontMain',
                              color: Color(0xFF000000),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '   \$5.45',
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              Text(
                                ' / month',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: 'FontMain',
                                  color: Color(0XFF000000),
                                ),
                              ),
                              Text(
                                '  (no free trial)',
                                style: TextStyle(
                                  fontFamily: 'FontMain',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4C4F53),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 80,
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE5EF),
                        border: Border.all(color: Color(0xFFFC8BAD), width: 4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '6 Month',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$8.95 /month",
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "(only \$1.15 / month)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFE167B0),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 4,
                              ),
                              child: Text(
                                "15%",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '*Recurring billing. Cancel anytime',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'FontMain',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 110,
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE5EF),
                        border: Border.all(color: Color(0xFFFC8BAD), width: 4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12 Month',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "\$15.49/month",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "(only \$x.xx / month)",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFE167B0),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 4,
                              ),
                              child: Text(
                                '22%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFE167B0),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              padding: EdgeInsets.only(right: 10, left: 12),
                              child: Text(
                                '7-day free trial',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0E0882),
                      padding: EdgeInsets.symmetric(
                        horizontal: 110,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Subscribe Now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'FontMain',
                        fontSize: 15,
                        color: Color(0xFFFFFFFF),
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
