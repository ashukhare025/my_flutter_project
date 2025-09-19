import 'package:flutter/material.dart';
import 'package:my_project/tikawoo/language/more.dart';

void main() {
  runApp(LanguageScreen());
}

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'language',
      debugShowCheckedModeBanner: false,
      home: LanguagePage(),
    );
  }
}
