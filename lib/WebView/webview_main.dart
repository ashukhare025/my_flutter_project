import 'package:flutter/material.dart';
import 'package:my_project/WebView/screen/home/home_screen.dart';

void main() {
  runApp(WebViewMain());
}

class WebViewMain extends StatelessWidget {
  const WebViewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewHomeScreen(),
    );
  }
}
