import 'package:flutter/material.dart';

import 'package:my_project/Practice/DemoProvider/screen/home_screen.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DemoHome());
  }
}
