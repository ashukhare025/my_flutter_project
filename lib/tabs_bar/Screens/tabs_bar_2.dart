import 'package:flutter/material.dart';
import 'package:my_project/tabs_bar/Screens/calls_screen.dart';
import 'package:my_project/tabs_bar/Screens/chat_screen.dart';
import 'package:my_project/tabs_bar/Screens/status_screen.dart';

class TabsBarScreen2 extends StatefulWidget {
  const TabsBarScreen2({super.key});

  @override
  State<TabsBarScreen2> createState() => _TabsBarScreen2State();
}

class _TabsBarScreen2State extends State<TabsBarScreen2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,

          title: Text("WhatsApp"),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALL"),
            ],
          ),
        ),
        body: TabBarView(
          children: [ChatScreen(), Status1Screen(), CallScreen()],
        ),
      ),
    );
  }
}
