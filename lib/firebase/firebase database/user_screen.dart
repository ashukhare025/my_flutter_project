import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  final dbReference = FirebaseFirestore.instance.collection('users');
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add'), centerTitle: true),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Form(
              child: ListView(
                padding: EdgeInsets.all(15),
                children: [
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        loading = true;
                      });
                      String id = DateTime.now().millisecondsSinceEpoch
                          .toString();
                      await dbReference.doc(id).set({
                        'id': id,
                        'name': name.text,
                        'email': email.text,
                      });
                      setState(() {
                        loading = false;
                      });
                      Navigator.pop(context);
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
    );
  }
}
