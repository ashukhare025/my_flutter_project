import 'package:flutter/material.dart';
import 'package:my_project/E-comm%20Application/e_splash.dart';

void main() {
  runApp(EcommerceScreen());
}

class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce",
      debugShowCheckedModeBanner: false,
      home: EcomSplash(),
    );
  }
}
