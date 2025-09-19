import 'package:flutter/material.dart';
import 'package:my_project/Api/Get%20APi/view_get_api.dart';

void main() {
  runApp(GetMain());
}

class GetMain extends StatelessWidget {
  const GetMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: ViewGetApiScreen(),
    );
  }
}
