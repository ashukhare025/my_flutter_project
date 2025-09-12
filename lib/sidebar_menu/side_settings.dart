import 'package:flutter/material.dart';

class SideSettings extends StatelessWidget {
  const SideSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Settings')),
      body: Center(child: Text('Settings')),
    );
  }
}
