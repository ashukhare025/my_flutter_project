import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/videos/video1.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              ),
              VideoProgressIndicator(
                colors: VideoProgressColors(
                  playedColor: Colors.red,
                  bufferedColor: Colors.white,
                ),
                controller,
                allowScrubbing: true,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  Duration current = controller.value.position;
                  await controller.seekTo(current - Duration(seconds: 10));
                },
                icon: Icon(CupertinoIcons.gobackward_10),
              ),
              IconButton(
                onPressed: () async {
                  if (controller.value.isPlaying) {
                    await controller.pause();
                  } else {
                    await controller.play();
                  }
                  setState(() {});
                },
                icon: Icon(
                  controller.value.isPlaying
                      ? CupertinoIcons.pause
                      : CupertinoIcons.play,
                ),
              ),
              IconButton(
                onPressed: () async {
                  Duration current = controller.value.position;
                  await controller.seekTo(current + Duration(seconds: 10));
                },
                icon: Icon(CupertinoIcons.goforward_10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
