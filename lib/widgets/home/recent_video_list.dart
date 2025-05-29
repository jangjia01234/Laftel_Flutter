import 'package:flutter/material.dart';
import '../common/more_detail_button.dart';
import '../common/day_button.dart';
import '../common/horizontal_video_list.dart';
import '../../data/anime_data.dart';
import '../common/single_anime_thumbnail_card.dart';

// class RecentVideoList extends StatelessWidget {
//   const RecentVideoList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//     //   Column(
//     //   mainAxisAlignment: MainAxisAlignment.start,
//     //   crossAxisAlignment: CrossAxisAlignment.start,
//     //   children: [
//     //     HorizontalVideoList(listTitle: "최근 본 작품"),
//         // TODO: 실제 데이터로 교체 (데이터 구조 수정 - 최근 시청한 회차 저장)
//         Text("0화",
//             style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600))
//     //   ],
//     // );
//   }
// }


class RecentVideoList extends StatefulWidget {
  const RecentVideoList({super.key});

  @override
  State<RecentVideoList> createState() => _RecentVideoListState();
}

class _RecentVideoListState extends State<RecentVideoList> {
  double width = 0;
  double height = 0;
  String animeTitle = "";
  String thumbnailImage = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("최근 본 작품",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: animeList.map((item) {
              return
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SingleAnimeThumbnailCard(
                                width: 200,
                                height: 100,
                                animeTitle: item.animeTitle,
                                thumbnailImage: item.thumbnailImageUrl),
                            SizedBox(width: 20),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    // TODO: 실제 데이터로 교체 (데이터 구조 수정 - 최근 시청한 회차 저장)
                    Text("0화",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600))
                  ],
                );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
