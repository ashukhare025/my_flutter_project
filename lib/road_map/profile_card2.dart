import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCardPage(),
    );
  }
}

class ProfileCardPage extends StatelessWidget {
  const ProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Photo
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
            SizedBox(height: 15),

            // Name
            Text(
              'Ashu Khare',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),

            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.teal),
                title: Text('+91 9876543210'),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.teal),
                title: Text('ashu@example.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
