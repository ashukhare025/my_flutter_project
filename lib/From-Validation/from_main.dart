import 'package:flutter/material.dart';
import 'package:my_project/From-Validation/validation_home.dart';

void main() {
  runApp(ValidationScreen());
}

class ValidationScreen extends StatelessWidget {
  const ValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValidationHome(),
    );
  }
}
