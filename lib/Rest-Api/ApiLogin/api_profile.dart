import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiProfile extends StatefulWidget {
  final String token;
  const ApiProfile({super.key, required this.token});

  @override
  State<ApiProfile> createState() => _ApiProfileState();
}

class _ApiProfileState extends State<ApiProfile> {
  bool loading = false;
  String result = '';

  @override
  void initState() {
    getProfile();
    super.initState();
  }

  void getProfile() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.get(
        Uri.parse('https://dummyjson.com/auth/me'),
        headers: {'Authorization': 'Bearer ${widget.token}'},
      );
      result = response.body;
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
      appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Center(child: loading ? CircularProgressIndicator() : Text(result)),
    );
  }
}
