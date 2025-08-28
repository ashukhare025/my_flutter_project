import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_project/widget/uihelper.dart';

import 'create_event.dart';
import 'dj_profile.dart';
import 'my_event_list.dart';
import 'plan.dart';
import 'song_request.dart';
import 'ticket.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF14BBC6),
        title: Center(
          child: Text('Contact Us', style: TextStyle(color: Colors.white)),
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
                  SizedBox(height: 10),
                  UiHelper.CustomText(
                    text: 'Don’t hesitate to contact us whether you',
                    height: 14,
                    color: Color(0xFFFFFFFF),
                    fontweight: FontWeight.bold,
                  ),
                  UiHelper.CustomText(
                    text: 'have a suggestion on our improvement,',
                    height: 14,
                    color: Color(0xFFFFFFFF),
                    fontweight: FontWeight.bold,
                  ),
                  UiHelper.CustomText(
                    text: 'a complain to discuss or an issue to',
                    height: 14,
                    color: Color(0xFFFFFFFF),
                    fontweight: FontWeight.bold,
                  ),
                  UiHelper.CustomText(
                    text: 'solve.',
                    height: 14,
                    color: Color(0xFFFFFFFF),
                    fontweight: FontWeight.bold,
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Icon(
                                Icons.phone,
                                color: Color(0xFFFFFFFF),
                                size: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Call us',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Our team is on the line',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Mon-Fri  •  9-17',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'FontMain',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.black,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Icon(
                                Icons.email_outlined,
                                color: Color(0xFFFFFFFF),
                                size: 20,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Email us',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Our team is on the line',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'FontMain',
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Mon-Fri  •  9-17',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'FontMain',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  UiHelper.CustomText(
                    text: 'Create a ticket',
                    height: 18,
                    fontweight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                  UiHelper.CustomText(
                    text: 'Support Ticket',
                    height: 12,
                    fontweight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0XFF383838),
                          fontFamily: 'FontMain',
                          fontWeight: FontWeight.w700,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Enter your message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.attachment_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Attach Image',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(width: 2),
                        Text(
                          '(upload image png,jpg format)',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 110,
                        vertical: 10,
                      ),
                      backgroundColor: Color(0xFF0E0882),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ticket()),
                      );
                    },
                    child: Text(
                      'Create Ticket',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
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
