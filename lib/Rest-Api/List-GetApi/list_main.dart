import 'package:flutter/material.dart';

import 'listapihome.dart';



void main() {
  runApp(ListApiScreen());
}

class ListApiScreen extends StatelessWidget {
  const ListApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ListApiHome());
  }
}
