import 'package:flutter/material.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Logout"),
                      icon: Icon(Icons.logout),
                      content: Text("Are you sure you want to logout?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("No"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yes"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Show Dialog"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  builder: (context) {
                    return ListView(
                      children: [
                        ListTile(title: Text("Title")),
                        ListTile(title: Text("Title")),
                      ],
                    );
                  },
                );
              },
              child: Text("Show Bottom Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
