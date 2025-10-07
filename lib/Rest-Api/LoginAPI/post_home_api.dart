import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostHomeApiScreen extends StatefulWidget {
  const PostHomeApiScreen({super.key});

  @override
  State<PostHomeApiScreen> createState() => _PostHomeApiScreenState();
}

class _PostHomeApiScreenState extends State<PostHomeApiScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String link = 'https://softwaredemo.top/manalot/public/api/login-process';
  bool loading = false;
  String result = "";

  void postMethod() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.post(
        Uri.parse(link),

        body: {'email': 'a@gmail.com', 'password': '12345678'},
      );

      result = response.body;

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        result = data['message'] ?? response.body;
      } else {
        result = "Error: ${response.statusCode}";
      }
    } catch (e) {
      print(e);
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post API"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              loading
                  ? CircularProgressIndicator()
                  : ElevatedButton(onPressed: postMethod, child: Text("Login")),
              SizedBox(height: 20),
              Text(
                result,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
