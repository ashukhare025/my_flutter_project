import 'package:flutter/material.dart';
import 'package:my_project/Practice/01_Provider/screen/home/home_provider.dart';

void main() {
  runApp(ProviderMainScreen());
}

class ProviderMainScreen extends StatelessWidget {
  const ProviderMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeProvider());
  }
}
