import 'package:flutter/material.dart';
import 'package:my_project/E-comm%20Application/account_settings.dart';
import 'package:my_project/E-comm%20Application/e_home_page.dart';
import 'package:my_project/E-comm%20Application/e_login_page.dart';
import 'package:my_project/E-comm%20Application/e_profile.dart';
import 'package:my_project/E-comm%20Application/notification.dart';

import '../constants/app_color.dart';
import '../constants/textfont.dart';

class SideScreen extends StatelessWidget {
  SideScreen({super.key});

  final List drawerMenuList = [
    {
      "leading": Icon(Icons.person_outline, color: Color(0xFF707B81)),
      "title": "Profile",
      'index': 1,
      'textColor': Colors.white,
    },
    {
      "leading": Icon(Icons.home_outlined, color: Color(0xFF707B81)),
      "title": "Home",
      "index": 2,
      'textColor': Colors.white,
    },
    {
      "leading": Icon(Icons.shopping_bag_outlined, color: Color(0xFF707B81)),
      "title": "My Cart",
      "index": 3,
      'textColor': Colors.white,
    },
    {
      "leading": Icon(Icons.favorite_border_outlined, color: Color(0xFF707B81)),
      "title": "Favorite",
      "index": 4,
      'textColor': Colors.white,
    },
    {
      "leading": Icon(Icons.fire_truck, color: Color(0xFF707B81)),
      "title": "Orders",
      "index": 5,
      'textColor': Colors.white,
    },
    {
      "leading": Icon(
        Icons.notifications_active_outlined,
        color: Color(0xFF707B81),
      ),
      "title": "Notification",
      "index": 6,
      'textColor': Colors.white,
    },
    {
      "leading": Icon(Icons.settings, color: Color(0xFF707B81)),
      "title": "Account & Settings ",
      "index": 7,
      'textColor': Colors.white,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.8,
      backgroundColor: Color(0xFF2D3B48),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome",
                                  style: TextRegular.copyWith(
                                    fontSize: 16,
                                    color: AppColors.colorWhite,
                                  ),
                                ),
                                Text(
                                  "Ashu Khare ",
                                  style: TextRegular.copyWith(
                                    fontSize: 20,
                                    color: AppColors.colorWhite,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Divider(color: Color(0xFF707B81)),
              ),
              SizedBox(height: 30),
              ...drawerMenuList.map((sideMenuData) {
                return ListTile(
                  leading: sideMenuData['leading'],
                  title: Text(sideMenuData['title']),
                  trailing: sideMenuData['trailing'],
                  textColor: sideMenuData['textColor'],
                  onTap: () {
                    // Navigator.pop(context);
                    if (sideMenuData['index'] == 1) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EcommProfile()),
                      );
                    } else if (sideMenuData['index'] == 6) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EcommNotification(),
                        ),
                      );
                    } else if (sideMenuData['index'] == 2) {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => EcommHome()),
                      );
                    } else if (sideMenuData['index'] == 7) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EcommAccountScreen(),
                        ),
                      );
                    }
                  },
                );
              }).toList(),
              SizedBox(height: 30),
              Divider(color: Color(0xFF707B81)),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: Color(0xFF707B81)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => EcommLogin()),
                        );
                      },
                      child: Text(
                        "Sign Out",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
