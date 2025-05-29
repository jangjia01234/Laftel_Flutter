import 'package:flutter/material.dart';
import 'package:layout/data/anime_data.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: animeList.map((item) {
              return Column(
                children: [
                  Row(
                    children: [
                      hotSingleVideoThumbnailCard(item.rank, item.animeTitle, item.genre),
                      hotSingleVideoThumbnailCard(item.rank, item.animeTitle, item.genre),
                      hotSingleVideoThumbnailCard(item.rank, item.animeTitle, item.genre),
                    ],
                  )
                ],
              );
            }).toList(),
          ),
        ]
      ),
    );
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
