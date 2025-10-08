import 'package:flutter/material.dart';
import 'package:my_project/firebase/Firebase-Storage/storage_home.dart';


void main() {
  runApp(StorageMain());
}

class StorageMain extends StatelessWidget {
  const StorageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StorageHome());
  }
}
