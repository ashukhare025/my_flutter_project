import 'dart:ui';
import 'package:flutter/material.dart';

import 'contact_us.dart';
import 'create_event.dart';
import 'dj_profile.dart';
import 'plan.dart';
import 'song_request.dart';

class MyEventScreen extends StatelessWidget {
  const MyEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF14BBC6),
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
                    minRadius: 30,
                    backgroundColor: Color(0xFF070180),
                    child: Text(
                      'MJ',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'AntonSC',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'MICHAL JOHNSON',
                    style: TextStyle(
                      fontSize: 14,
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
                  fontSize: 16,
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
                  fontSize: 16,
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
                  fontSize: 16,
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
                  fontSize: 16,
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
                  fontSize: 16,
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
                  fontSize: 16,
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
                  fontSize: 16,
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
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FontMain',
                  color: Color(0xFFFFFFFF),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'App Version 3.2.1',
                  style: TextStyle(
                    fontSize: 16,
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
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            backgroundColor: Color(0xFF0E0882),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Upcoming Event’s",
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 0, top: 0),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 13,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side: BorderSide(
                              color: Color(0xFF0B01BC),
                              width: 2,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Past Event’s",
                            style: TextStyle(
                              fontFamily: 'FontMain',
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0XFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/DJ/song-tour.png',
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sound of Soil Tour",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                                overflow: TextOverflow.ellipsis,
                              ),
                              softWrap: true,
                            ),
                            SizedBox(height: 8),
                            Text(
                              "25 Sep, 2024  -  9:30 PM",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0XFFFFFFFF),
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                Expanded(
                                  child: Text(
                                    'Phoenix Citadel Mall',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Experience the magic of Punjab's legendary \nartist,"
                              "Gurdas Maan, as he embarks on an \nall-India tour to"
                              "promote his most loved songs.",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 10,
                                height: 1.2,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/DJ/cherry.jpg',
                          height: 120,
                          width: 120,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shillong Cheery Blossom",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "15 Nov, 2024  -  2:00PM",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0XFFFFFFFF),
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'RBDSA Sports Complex',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Join us for the much-anticipated Cherry"
                              " \nBlossom Festival, a dazzling celebration \nthat"
                              "has rapidly blossomed into North East india's"
                              "premier commercial event",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 10,
                                height: 1.2,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/DJ/song-tour.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sound of Soil Tour",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "25 Sep, 2024  -  9:30 PM",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0XFFFFFFFF),
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'Phoenix Citadel Mall',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Experience the magic of Punjab's legendary artist,"
                              "Gurdas Maan, as he embarks on an \nall-India tour to"
                              "promote his most loved songs.",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 10,
                                height: 1.2,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/DJ/cherry.jpg',
                          height: 150,
                          width: 120,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "Shillong Cheery Blossom",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "15 Nov, 2024  -  2:00PM",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0XFFFFFFFF),
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'RBDSA Sports Complex',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Join us for the much-anticipated Cherry"
                              " \nBlossom Festival, a dazzling celebration \nthat"
                              "has rapidly blossomed into North East india's"
                              "premier commercial event",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 10,
                                height: 1.2,
                              ),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/DJ/song-tour.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Sound of Soil Tour",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'FontMain',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "25 Sep, 2024  -  9:30 PM",
                              style: TextStyle(
                                color: Color(0XFFFFFFFF),
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0XFFFFFFFF),
                                  size: 14,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'Phoenix Citadel Mall',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Experience the magic of Punjab's legendary artist,"
                              "Gurdas Maan, as he embarks on an \nall-India tour to"
                              "promote his most loved \nsongs.",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 10,
                                height: 1.1,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
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
