import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPost extends StatefulWidget {
  const ApiPost({super.key});

  @override
  State<ApiPost> createState() => _ApiPostState();
}

class _ApiPostState extends State<ApiPost> {
  final TextEditingController nameController = TextEditingController();

  int userId = 214;
  int blockedUserId = 215;
  List blockedUsers = [];
  bool loading = false;
  String blockUser =
      'https://manalotapi.indiasoftlabs.com/public/api/block-user';
  String blockedUser =
      'https://manalotapi.indiasoftlabs.com/public/api/blocked-users';
  String unblockUser =
      'https://manalotapi.indiasoftlabs.com/public/api/unblock-user';

  void postBlockUser() async {
    setState(() => loading = true);

    try {
      final response = await http.post(
        Uri.parse(blockUser),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'user_id': userId.toString(),
          'blocked_user_id': blockedUserId.toString(),
        }),
      );

      print("POST /block-user → ${response.statusCode}");
      print("Response Body → ${response.body}");

      if (response.statusCode == 200) {
        try {
          final data = jsonDecode(response.body);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(data['message'] ?? 'User Blocked')),
          );
          await getBlockedUsers();
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Invalid JSON: ${response.body}')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Server Error: ${response.statusCode}')),
        );
      }
    } catch (e) {
      print("Block error: $e");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    } finally {
      setState(() => loading = false);
    }
  }

  void unblockedUser() async {
    setState(() => loading = true);
    try {
      final response = await http.post(
        Uri.parse(unblockUser),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'user_id': userId.toString(),
          'blocked_user_id': blockedUserId.toString(),
        }),
      );

      print("POST /unblock-user → ${response.statusCode}");
      print("Response Body → ${response.body}");

      if (response.statusCode == 200) {
        try {
          final data = jsonDecode(response.body);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(data['message'] ?? 'User Unblocked')),
          );
          await getBlockedUsers();
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Invalid JSON: ${response.body}')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Server Error: ${response.statusCode}')),
        );
      }
    } catch (e) {
      print("Unblock error: $e");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    } finally {
      setState(() => loading = false);
    }
  }

  Future<void> getBlockedUsers() async {
    setState(() => loading = true);
    try {
      final response = await http.post(Uri.parse('$blockedUser?user_id=214'));

      print("GET /blocked-users → ${response.statusCode}");
      print("Response Body → ${response.body}");

      if (response.statusCode == 200) {
        try {
          final data = jsonDecode(response.body);
          if (data is Map && data['success'] == true) {
            setState(() => blockedUsers = data['data']);
          } else {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Invalid response format')));
          }
        } catch (e) {
          print("JSON Decode Error: $e");
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Invalid JSON response')));
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Server Error: ${response.statusCode}')),
        );
      }
    } catch (e) {
      print("Get Blocked Users Error: $e");
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    } finally {
      setState(() => loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    getBlockedUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Api'), centerTitle: true),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Blocked User ID',
                    ),
                    onChanged: (val) {
                      blockedUserId = int.tryParse(val) ?? 0;
                    },
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: postBlockUser,
                      child: Text('Block User'),
                    ),
                    ElevatedButton(
                      onPressed: unblockedUser,
                      child: Text('unblocked User'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Blocked Users (${blockedUsers.length})',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Expanded(
                  child: blockedUsers.isEmpty
                      ? const Center(child: Text('No Blocked Users'))
                      : ListView.builder(
                          itemCount: blockedUsers.length,
                          itemBuilder: (context, index) {
                            final user = blockedUsers[index]['blocked_user'];
                            if (user == null) return const SizedBox.shrink();

                            return ListTile(
                              title: Text(
                                "${user['first_name'] ?? ''} ${user['last_name'] ?? ''}",
                              ),
                              subtitle: Text(user['email'] ?? ''),
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}
