import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateUser extends StatefulWidget {
  final Map<String, dynamic> user;
  const UpdateUser({super.key, required this.user});

  @override
  State<UpdateUser> createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  final dbReference = FirebaseFirestore.instance.collection('users');

  @override
  void initState() {
    name.text = widget.user['name'];
    email.text = widget.user['email'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update')),
      body: Form(
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
                await dbReference.doc(widget.user['id']).update({
                  'name': name.text,
                  'email': email.text,
                });
                Navigator.pop(context);
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
