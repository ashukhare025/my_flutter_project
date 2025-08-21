import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  MyForm({super.key, required this.title, required this.icon});

  String title;

  IconData icon;

  @override
  Widget build(BuildContext context) {
   return TextFormField(decoration: InputDecoration(
       label: Icon(Icons.email_outlined,size: 20,),
       hintText: 'Email',
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(0),
       ),
    ),
   );
  }
}










