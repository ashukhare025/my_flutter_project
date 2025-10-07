import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'api_profile.dart';


class ApiLoginScreen extends StatefulWidget {
  const ApiLoginScreen({super.key});

  @override
  State<ApiLoginScreen> createState() => _ApiLoginScreenState();
}

class _ApiLoginScreenState extends State<ApiLoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool loading = false;

  void login() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: jsonEncode({
          'username': username.text,
          'password': password.text,
        }),
        headers: {'Content-type': 'application/json'},
      );
      final data = jsonDecode(response.body);
      String token = data['accessToken'];
      //print(response.body);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ApiProfile(token: token)),
      );
    } catch (err) {
      print(err);
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: username,
            decoration: InputDecoration(hintText: 'Username'),
          ),
          SizedBox(height: 20),
          TextField(
            controller: password,
            decoration: InputDecoration(hintText: 'Password'),
          ),
          SizedBox(height: 20),
          loading
              ? Center(child: CircularProgressIndicator())
              : ElevatedButton(onPressed: login, child: Text('Login')),
        ],
      ),
    );
  }
}
