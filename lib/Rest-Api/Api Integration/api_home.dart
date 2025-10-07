import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ApiModels/api_post.dart';


class ApiHome extends StatefulWidget {
  const ApiHome({super.key});

  @override
  State<ApiHome> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
  bool loading = false;
  String link = "https://jsonplaceholder.typicode.com/posts";
  List<PostModel> posts = [];

  void getDate() async {
    posts.clear();
    setState(() {
      loading = true;
    });

    try {
      final response = await http.get(
        Uri.parse(link),
        headers: {"Accept": "application/json", "User-Agent": "FlutterApp"},
      );
      final data = jsonDecode(response.body);
      for (var post in data) {
        PostModel newPost = PostModel(
          post["id"],
          post["userId"],
          post["title"],
          post["body"],
        );
        posts.add(newPost);
      }
    } catch (e) {
      print(e);
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
        child: loading
            ? CircularProgressIndicator()
            : Column(
                children: [
                  ElevatedButton(onPressed: getDate, child: Text("Get Method")),
                  Expanded(
                    child: ListView(
                      children: [
                        for (var post in posts)
                          ListTile(
                            title: Text(post.title),
                            subtitle: Text(post.body),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
