import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_project/bottom_navigation/Navigation-Without-push-pop/screens/navigation_profile.dart';
import 'package:my_project/bottom_navigation/Navigation-Without-push-pop/screens/navigation_settings.dart';

import '../screens/navigation_home_screen.dart';

class NavigationMainHome extends StatefulWidget {
  const NavigationMainHome({super.key});

  @override
  State<NavigationMainHome> createState() => _NavigationMainHomeState();
}

class _NavigationMainHomeState extends State<NavigationMainHome> {
  List<Widget> getList = [
    NavigationHome(),
    NavigationProfileScreen(),
    NavigationSettingScreen(),
  ];

  List<String> title = ['Home', 'Profile', 'Settings'];

  int currentIndex = 0;

  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: Text(
          title[currentIndex],
          // currentIndex == 0
          //     ? 'Home'
          //     : currentIndex == 1
          //     ? 'Profile'
          //     : 'Settings',
        ),
        centerTitle: true,
      ),

      body: getList[currentIndex],

      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 50),
            FlutterLogo(size: 100),
            SizedBox(height: 20),
            ListTile(
              selected: currentIndex == 0,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 0;
                });
              },
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              selected: currentIndex == 1,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 1;
                });
              },
              title: Text('Profile'),
              leading: Icon(CupertinoIcons.profile_circled),
            ),
            ListTile(
              selected: currentIndex == 2,
              onTap: () {
                globalKey.currentState?.closeDrawer();
                setState(() {
                  currentIndex = 2;
                });
              },
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
