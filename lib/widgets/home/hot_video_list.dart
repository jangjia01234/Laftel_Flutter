import 'package:flutter/material.dart';
import 'time_unit_button.dart';

class HotVideoList extends StatelessWidget {
  const HotVideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("라프텔 인기 애니",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        Row(
          children: [
            timeUnitButton("실시간"),
            SizedBox(width: 5),
            timeUnitButton("이번주"),
            SizedBox(width: 5),
            timeUnitButton("분기"),
            SizedBox(width: 5),
            timeUnitButton("역대"),
          ],
        ),
        RankingScrollView()
      ],
    );
  }
}

class RankingScrollView extends StatelessWidget {
  const RankingScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                hotSingleVideoThumbnailCard("1", "주술회전 1기 part 1", "판타지/액션"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("2", "주술회전 2기 part 2", "판타지/액션"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("3", "(무삭제) 귀멸의 칼날", "판타지/액션"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hotSingleVideoThumbnailCard(
                    "4", "전생했더니 슬라임이었던 건에 대하여", "이세계/판타지"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("5", "(더빙) 꿈빛 파티시엘 리마스터", "로맨스/음식"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard(
                    "6", "(자막) 귀멸의 칼날: 환락의 거리편", "판타지/액션"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hotSingleVideoThumbnailCard("7", "하이큐!! 1기", "스포츠"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("8", "(자막) 하이큐!! 2기", "스포츠"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("9", "(자막) 데스노트 리마스터", "판타지/추리"),
              ],
            )
          ],
        ));
  }
}

Widget hotSingleVideoThumbnailCard(String rank, String title, String genre) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Container(
            width: 140, height: 80, color: Colors.black.withOpacity(0.1)),
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(rank,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4),
              Text(title, style: TextStyle(fontSize: 13)),
              Text(genre, style: TextStyle(fontSize: 11, color: Colors.grey))
            ],
          )
        ],
      ),
      SizedBox(width: 20),
    ],
  );
}
