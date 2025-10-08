import 'package:flutter/material.dart';

class StorageHome extends StatefulWidget {
  const StorageHome({super.key});

  @override
  State<StorageHome> createState() => _StorageHomeState();
}

class _StorageHomeState extends State<StorageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Storage')),
      body: Column(
        children: [ElevatedButton(onPressed: () {}, child: Text('Pick Image'))],
      ),
    );
  }
}
