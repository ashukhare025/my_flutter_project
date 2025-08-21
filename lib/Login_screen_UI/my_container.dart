import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.color});

  double height;
  double width;

  double radius;

  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}