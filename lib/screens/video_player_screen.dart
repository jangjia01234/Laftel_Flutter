import 'package:flutter/material.dart';

import '../models/anime_info_model.dart';
import '../data/anime_data.dart';

import '../widgets/common/single_video_player.dart';
import '../widgets/common/thin_divider.dart';

import '../utils/string_extension.dart';

class VideoPlayerScreen extends StatefulWidget {
  final int animeIndex;
  final int episodeIndex;

  const VideoPlayerScreen({
    super.key,
    this.animeIndex = 0,
    this.episodeIndex = 0,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    final AnimeInfo selectedAnime = animeList[widget.animeIndex];
    final Episode selectedEpisode = selectedAnime.episodes[widget.episodeIndex];

    return Scaffold(
      body: Center(
        child: Column(children: [
          SingleVideoPlayer(),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 20, right: 16.0, bottom: 0, left: 16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(selectedAnime.animeTitle,
                                style: TextStyle(fontSize: 11)),

                            Padding(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(selectedEpisode.title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Icon(Icons.ios_share),
                                ],
                              ),
                            ),

                            // TODO: 말줄임표(..) 뒤에 더보기 버튼 삽입
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      text: TextSpan(
                                          text: selectedEpisode.summary,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])),
                  ThinDivider(),
                  Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(Icons.comment_outlined,
                                            size: 20),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 5, right: 2),
                                        child: Text("댓글",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Text("100",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Icon(Icons.more_vert, size: 20)
                                ]),
                            Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.circle_rounded,
                                      color: Colors.grey),
                                  SizedBox(width: 5),
                                  Text("스포일러가 있어요!",
                                      style: TextStyle(color: Colors.grey)),
                                  SizedBox(width: 5),
                                  Text("보기",
                                      style: TextStyle(
                                          color: Colors.indigoAccent)),
                                ],
                              ),
                            ),
                          ])),
                  ThinDivider(),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("에피소드",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Container(
                          constraints: const BoxConstraints(minHeight: 50),
                          height: 140,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: selectedAnime.episodes.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 140,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // TODO: 이미지 lazy loading 혹은 skeleton 처리 필요
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          child:
                                              Image.network(selectedAnime
                                                  .episodes[index]
                                                  .thumbnailImageUrl),
                                        ),
                                        SizedBox(height: 10),
                                        // MARK: (긴 제목 에피소드 대비) 말줄임표 처리
                                        RichText(
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          text: TextSpan(
                                              text: selectedAnime
                                                  .episodes[index].title
                                                  .insertZwj(),
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10)
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
