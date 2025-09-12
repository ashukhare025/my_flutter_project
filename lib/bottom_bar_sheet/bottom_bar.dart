import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Enter your info',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(hintText: 'First Name'),
                  ),
                  SizedBox(height: 5),
                  TextField(decoration: InputDecoration(hintText: 'Last Name')),
                  SizedBox(height: 5),
                  TextField(decoration: InputDecoration(hintText: 'Email')),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('Submit')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Bottom Sheet', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showBottomSheet(context);
          },
          child: Text('Bottom Bar'),
        ),
      ),
    );
  }
}
