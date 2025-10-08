import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FireBaseForgotPassword extends StatefulWidget {
  const FireBaseForgotPassword({super.key});

  @override
  State<FireBaseForgotPassword> createState() => _FireBaseForgotPasswordState();
}

class _FireBaseForgotPasswordState extends State<FireBaseForgotPassword> {
  TextEditingController email = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;
  void resetPassword() async {
    setState(() {
      loading = true;
    });
    try {
      await auth.sendPasswordResetEmail(email: email.text);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please check your email'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password')),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                spacing: 15,
                children: [
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(hintText: 'email'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      resetPassword();
                    },
                    child: Text('Reset Password'),
                  ),
                ],
              ),
            ),
    );
  }
}
