import 'package:flutter/material.dart';
import '../widgets/single_video_player.dart';
import '../widgets/thin_divider.dart';
import '../widgets/horizontal_video_list.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          SingleVideoPlayer(),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("애니메이션 제목",
                            style: TextStyle(fontSize: 10)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("N화 에피소드 제목",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Icon(Icons.ios_share),
                          ],
                        ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "episode summaryepisode summaryepisode summaryepisode summary",
                                style: TextStyle(color: Colors.grey), softWrap: true),
                            Text("...더보기",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold))
                          ]),
                      ThinDivider(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.comment_outlined),
                                  Text("댓글",
                                      style: TextStyle(fontWeight: FontWeight.bold)),
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
                        HorizontalVideoList(),
                        SizedBox(height: 40),
                      ],
                    ),
                  )
                ],
              ))
        ],
      );
  }
}
