import 'package:flutter/material.dart';
import 'package:my_project/tabs_bar/Screens/calls_screen.dart';
import 'package:my_project/tabs_bar/Screens/chat_screen.dart';
import 'package:my_project/tabs_bar/Screens/status_screen.dart';
import 'package:my_project/whatsapp_series/tabbarscreen/statusscreen.dart';

class TabsBarScreen extends StatefulWidget {
  const TabsBarScreen({super.key});

  @override
  State<TabsBarScreen> createState() => _TabsBarScreenState();
}

class _TabsBarScreenState extends State<TabsBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Home"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'CHAT'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALL'),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [ChatScreen(), Status1Screen(), CallScreen()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
