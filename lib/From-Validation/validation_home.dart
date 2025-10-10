import 'package:flutter/material.dart';

class ValidationHome extends StatefulWidget {
  const ValidationHome({super.key});

  @override
  State<ValidationHome> createState() => _ValidationHomeState();
}

class _ValidationHomeState extends State<ValidationHome> {
  TextEditingController name = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo),
      body: Form(
        key: fromKey,
        child: Column(
          spacing: 15,
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: name,
              decoration: InputDecoration(hintText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter your name';
                }

                return null;
              },
            ),
            TextFormField(
              controller: phone,
              decoration: InputDecoration(hintText: 'Phone'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter your phone';
                }
                if (value.length != 10) {
                  return 'minimum length mush be 10';
                }
                return null;
              },
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(hintText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter your email';
                }
                if (!value.contains('@')) {
                  return 'Invalid email address';
                }
                return null;
              },
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(hintText: 'Password'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter your password';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (fromKey.currentState!.validate()) {
                  print('Name: ${name.text}');
                  print('Phone: ${phone.text}');
                  print('Email: ${email.text}');
                  print('Password: ${password.text}');
                }
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
