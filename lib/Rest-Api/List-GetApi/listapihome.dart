import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListApiHome extends StatefulWidget {
  const ListApiHome({super.key});

  @override
  State<ListApiHome> createState() => _ListApiHomeState();
}

class _ListApiHomeState extends State<ListApiHome> {
  String link = 'https://softwaredemo.top/manalot/public/api/suggested-user';
  bool loading = false;
  List listApi = [];
  String result = "";

  void getList() async {
    listApi.clear();
    setState(() {
      loading = true;
    });

    try {
      final response = await http.get(Uri.parse(link));
      final data = jsonDecode(response.body);
      if (data['data'] != null) {
        listApi = data['data'];
        result = data['message'] ?? "Users fetched successfully";
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
      appBar: AppBar(title: Text("List Api"), centerTitle: true),
      body: Center(
        child: loading
            ? CircularProgressIndicator()
            : Column(
                children: [
                  ElevatedButton(onPressed: getList, child: Text('Get Method')),
                  Expanded(
                    child: ListView.builder(
                      itemCount: listApi.length,
                      itemBuilder: (context, index) {
                        final user = listApi[index];
                        final userDetails = user['userdetails'];
                        return ListTile(
                          leading:
                              userDetails != null &&
                                  userDetails['user_photo'] != null
                              ? Image.network(
                                  userDetails['user_photo'],
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )
                              : Icon(Icons.person),
                          title: Text(
                            "${user['first_name']} ${user['last_name'] ?? ''}",
                          ),
                          subtitle: Text(
                            userDetails != null
                                ? userDetails['email'] ?? "No Email"
                                : "No Email",
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
