import 'package:flutter/material.dart';
import 'package:my_project/video/video_home.dart';

void main() {
  runApp(VideoScreen());
}

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: VideoPlay());
  }
}
