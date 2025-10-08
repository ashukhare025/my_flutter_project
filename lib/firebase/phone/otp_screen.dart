import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_project/firebase/phone/phone_home.dart';

class OtpPage extends StatefulWidget {
  String verificationid;
  OtpPage({super.key, required this.verificationid});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController optController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP Screen'), centerTitle: true),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: optController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter The OTP',
                suffixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () async {
              try {
                PhoneAuthCredential credential =
                    await PhoneAuthProvider.credential(
                      verificationId: widget.verificationid,
                      smsCode: optController.text.toString(),
                    );
                FirebaseAuth.instance.signInWithCredential(credential).then((
                  value,
                ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhoneHome()),
                  );
                });
              } catch (ex) {
                log(ex.toString());
              }
            },
            child: Text('OTP'),
          ),
        ],
      ),
    );
  }
}
