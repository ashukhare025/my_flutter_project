import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPostHome extends StatefulWidget {
  const ApiPostHome({super.key});

  @override
  State<ApiPostHome> createState() => _ApiPostHomeState();
}

class _ApiPostHomeState extends State<ApiPostHome> {
  // String link = "https://jsonplaceholder.typicode.com/posts";
  String link = 'https//fakestoreapi.com/products';
  bool loading = false;
  String result = "";
  int statusCode = -1;
  void postMethod() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.post(
        Uri.parse(link),
        body: jsonEncode({
          //'id': 0,
          'title': 'This is Flutter Post',
          'price': 0.1,
          'description': 'String',
          'category': "String",
          'image': 'http://example.com',
          //'body': 'Hare is the New Post',
          //'UserId': 1,
        }),
        headers: {
          'Content-type': 'application/json',
          //'Content-type': 'application/json; charset=UTF-8'},
        },
      );
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      print(e);
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void putMethod() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.put(
        Uri.parse('$link/1'),
        body: jsonEncode({
          //'id': 0,
          'title': 'This is Flutter Post',
          'price': 0.1,
          'description': 'Flutter description',
          'category': "Fashion",
          'image': 'http://example.com',
          //'body': 'Hare is the New Post',
          //'UserId': 1,
        }),
        headers: {
          // 'Content-type': 'application/json; charset=UTF-8'
          'Content-type': 'application/json',
        },
      );
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      print(e);
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void patchMethod() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.patch(
        Uri.parse('$link/1'),
        body: jsonEncode({'title': 'This is Update title'}),
        headers: {'Content-type': 'application/json; charset=UTF-8'},
      );
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      print(e);
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void deleteMethod() async {
    setState(() {
      loading = true;
    });
    try {
      final response = await http.delete(Uri.parse('$link/1'));
      result = response.body;
      statusCode = response.statusCode;
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
      appBar: AppBar(title: Text("API Integration"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(onPressed: postMethod, child: Text("POST")),
                ElevatedButton(onPressed: putMethod, child: Text("PUT")),
                ElevatedButton(onPressed: patchMethod, child: Text("PATCH")),
                ElevatedButton(onPressed: deleteMethod, child: Text("DELETE")),
              ],
            ),
            ListTile(
              title: Text("response"),
              subtitle: Text(result),
              trailing: loading
                  ? CircularProgressIndicator()
                  : Text('status code: $statusCode'),
            ),
          ],
        ),
      ),
    );
  }
}
