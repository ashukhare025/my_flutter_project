import 'package:flutter/material.dart';
import 'package:my_project/ModelClass/screen/home/model_home_screen.dart';

void main() {
  runApp(ModelClass());
}

class ModelClass extends StatelessWidget {
  const ModelClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModelHomeScreen(),
    );
  }
}
