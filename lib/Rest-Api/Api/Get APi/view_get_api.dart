import 'package:flutter/material.dart';

import '../api_services/api_services.dart';
import '../models/get_users_list.dart';

class ViewGetApiScreen extends StatefulWidget {
  const ViewGetApiScreen({super.key});

  @override
  State<ViewGetApiScreen> createState() => _ViewGetApiScreenState();
}

class _ViewGetApiScreenState extends State<ViewGetApiScreen> {
  GetUsersListModel getUsersListModel = GetUsersListModel();
  bool isLoading = false;

  void getUsersList() async {
    setState(() {
      isLoading = true;
    });

    try {
      getUsersListModel = (await ApiService().getUsersList("1"))!;

      setState(() {
        isLoading = false;
      });
    } catch (err) {
      print(err.toString());
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('Get Api Integration'),
          centerTitle: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
