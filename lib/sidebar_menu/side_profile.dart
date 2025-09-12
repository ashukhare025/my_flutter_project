import 'package:flutter/material.dart';

class SideProfile extends StatelessWidget {
  const SideProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Profile')),
      body: Center(child: Text('Profile')),
    );
  }
}
