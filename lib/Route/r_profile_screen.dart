import 'package:flutter/material.dart';

class RouteProfile extends StatelessWidget {
  final String name;
  const RouteProfile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile $name'), centerTitle: true),
    );
  }
}
