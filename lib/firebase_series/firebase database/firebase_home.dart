import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_project/firebase_series/firebase%20database/update_user.dart';
import 'package:my_project/firebase_series/firebase%20database/user_screen.dart';

class FireBaseHome extends StatefulWidget {
  const FireBaseHome({super.key});

  @override
  State<FireBaseHome> createState() => _FireBaseHomeState();
}

class _FireBaseHomeState extends State<FireBaseHome> {
  final dbRef = FirebaseFirestore.instance.collection('users');

  // List<Map<String, dynamic>> users = [];
  //
  // void fetchData() async {
  //   //users.clear();
  //   //final data = await dbRef.get();
  //   dbRef.snapshots().listen((data) {
  //     users.clear();
  //     setState(() {
  //       for (var doc in data.docs) {
  //         users.add(doc.data());
  //       }
  //     });
  //   });
  // }

  // @override
  // void initState() {
  //   fetchData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DataBase'), centerTitle: true),
      body: StreamBuilder(
        stream: dbRef.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.data != null) {
            List<Map<String, dynamic>> users = [];
            for (var doc in snapshot.data!.docs) {
              users.add(doc.data());
            }
            return ListView(
              children: [
                for (var user in users)
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UpdateUser(user: user),
                        ),
                      );
                    },
                    title: Text(user['name']),
                    subtitle: Text(user['email']),
                    trailing: IconButton(
                      onPressed: () async {
                        await dbRef.doc(user['id']).delete();
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ),
              ],
            );
          }
          return SizedBox();
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
