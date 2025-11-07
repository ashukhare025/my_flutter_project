import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/demo_provider.dart';

class DemoHome extends StatelessWidget {
  const DemoHome({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build function called ');
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => DemoProvider(),
        child: Consumer<DemoProvider>(
          builder: (context, provider, child) {
            return Center(child: Text(provider.data));
          },
        ),
      ),
    );
  }
}
