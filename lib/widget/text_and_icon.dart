import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.orange.shade100,
          child: Icon(icon, size: 25, color: Colors.orange),
        ),
        SizedBox(height: 5),
        Text(text, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
