import 'package:flutter/material.dart';
import 'package:my_project/sidebar_menu/side_profile.dart';
import 'package:my_project/sidebar_menu/side_settings.dart';

class SideBarScreen extends StatelessWidget {
  SideBarScreen({super.key});

  final List drawerMenuListname = [
    {
      "leading": Icon(Icons.account_circle, color: Color(0xFF13C0E3)),
      "title": "Profile",
      "trailing": Icon(Icons.chevron_right),
      "index": 1,
    },
    {
      "leading": Icon(Icons.animation_rounded, color: Color(0xFF13C0E3)),
      "title": "About Us",
      "trailing": Icon(Icons.chevron_right),
      "index": 2,
    },
    {
      "leading": Icon(Icons.help, color: Color(0xFF13C0E3)),
      "title": "Help",
      "trailing": Icon(Icons.chevron_right),
      "index": 3,
    },
    {
      "leading": Icon(Icons.settings, color: Color(0xFF13C0E3)),
      "title": "Settings",
      "trailing": Icon(Icons.chevron_right),
      "index": 4,
    },
    {
      "leading": Icon(Icons.exit_to_app, color: Color(0xFF13C0E3)),
      "title": "Log Out",
      "trailing": Icon(Icons.chevron_right),
      "index": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 280,
        child: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://unsplash.com/photos/silhouette-photo-of-man-holding-camera-5OyGRn_r9Y4",
                  ),
                ),
                title: Text('Ashu', style: TextStyle(color: Colors.black)),
                subtitle: Text(
                  '123456789',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 2),
              ...drawerMenuListname.map((sideMenuData) {
                return ListTile(
                  leading: sideMenuData['leading'],
                  title: Text(sideMenuData['title']),
                  trailing: sideMenuData['trailing'],
                  onTap: () {
                    // Navigator.pop(context);

                    if (sideMenuData['index'] == 1) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SideProfile()),
                      );
                    } else if (sideMenuData['index'] == 4) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SideSettings()),
                      );
                    }
                  },
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
