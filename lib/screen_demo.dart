import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppUI());
}

class WhatsAppUI extends StatelessWidget {
  const WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title:  Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.green,
            indicatorWeight: 3,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Camera")),
            ChatsTab(),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        chatTile("assets/images/user.png", "Arshad khan", "1:12", "1", true),
        chatTile("assets/images/user.png", "Ali khan", "Missed voice call", "2", false, isMissedCall: true),
        chatTile("assets/images/user.png", "Salman khan", "📷 Photo", "5", true, date: "Yesterday"),
        chatTile("assets/images/user.png", "Wajahat khan", "🎥 Video", "", false, date: "17/8/2022"),
        chatTile("assets/images/user.png", "Irfan khan", "📄 Documents", "", false, date: "18/8/2022"),
        chatTile("assets/images/user.png", "Syed Safi Ullah", "❤️", "", false, date: "18/8/2022"),
        chatTile("assets/images/user.png", "Adil Khan", "Hey there! I am using Whatsapp.", "", false, date: "Yesterday"),
        chatTile("assets/images/user.png", "Muhammad Ali", "Assalam-o-Alaikum", "", false, date: "Yesterday"),
      ],
    );
  }

  static Widget chatTile(String img, String name, String msg, String count, bool isUnread,
      {bool isMissedCall = false, String date = ""}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
        radius: 25,
      ),
      title: Text(name),
      subtitle: Text(
        msg,
        style: TextStyle(color: isMissedCall ? Colors.red : Colors.grey[400]),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date.isEmpty ? "10:21 am" : date,
              style: TextStyle(color: isUnread ? Colors.green : Colors.grey, fontSize: 12)),
          if (count.isNotEmpty)
            Container(
              margin:  EdgeInsets.only(top: 5),
              decoration:  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: Text(count, style:  TextStyle(fontSize: 12)),
            ),
        ],
      ),
    );
  }
}
