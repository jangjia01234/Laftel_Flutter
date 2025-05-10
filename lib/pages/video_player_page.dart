import 'package:flutter/material.dart';
import 'widgets/single_video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleVideoPlayer(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("anime title"),
              Text("episode title"),
              Text("episode summary"),
              Divider(),
              Text("comment"),
              Text("comment preview"),
              Divider(),
              Text("episode (list title)"),
              Text("episodes list"),
            ],
          ),
        )
      ],
    );
  }
}