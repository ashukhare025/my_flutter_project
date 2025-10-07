import 'package:flutter/material.dart';

import 'api_post.dart';

void main() {
  runApp(PostMainScreen());
}

class PostMainScreen extends StatelessWidget {
  const PostMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ApiPostHome());
  }
}
