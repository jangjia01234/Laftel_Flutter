import 'package:flutter/material.dart';
import 'widgets/single_video_player.dart';
import 'widgets/thin_divider.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("episode title aaaaaaaaaa",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Icon(Icons.ios_share),
                ],
              ),
              Text(
                  "episode summaryepisode summaryepisode summaryepisode summary",
                  style: TextStyle(color: Colors.grey)),
              Text("...더보기",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold)),
              ThinDivider(),
              Text("comment"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    Text("댓글", style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("(댓글 수)",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Icon(Icons.more_vert)
              ]),
              Row(
                children: [
                  Icon(Icons.circle_rounded),
                  Text("스포일러가 있어요!", style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 5),
                  Text("보기", style: TextStyle(color: Colors.indigoAccent)),
                ],
              ),
              ThinDivider(),
              Text("에피소드", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("episodes list"),
            ],
          ),
        )
      ],
    );
  }
}
