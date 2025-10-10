import 'package:flutter/material.dart';

import 'location_home.dart';

void main() {
  runApp(LocationMainScreen());
}

class LocationMainScreen extends StatelessWidget {
  const LocationMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LocationHome());
  }
}
