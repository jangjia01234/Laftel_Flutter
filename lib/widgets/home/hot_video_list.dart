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
        RankingScrollView(),
        SizedBox(height: 20),
      ],
    );
  }
}

class RankingScrollView extends StatelessWidget {
  const RankingScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    animeList.sort((a, b) => a.rank.compareTo(b.rank));

    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: animeList.map((item) {
              return Column(
                children: [
                  Row(
                    children: [
                      // TODO: 3개씩 보이도록 자르기
                      hotSingleVideoThumbnailCard(item.thumbnailImageUrl, item.rank, item.animeTitle, item.genre),
                      hotSingleVideoThumbnailCard(item.thumbnailImageUrl, item.rank, item.animeTitle, item.genre),
                      hotSingleVideoThumbnailCard(item.thumbnailImageUrl, item.rank, item.animeTitle, item.genre),
                    ],
                  ),
                ],
              );
            }).toList(),
          ),
        ]
      ),
    );
  }
}

Widget hotSingleVideoThumbnailCard(String imageUrl, String rank, String title, String genre) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
          width: 140,
          height: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(imageUrl),
          )),
      SizedBox(
          width: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text(rank,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  SizedBox(
                      width: 70,
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        text: TextSpan(
                          text: title,
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      )),
                  Text(genre,
                      style: TextStyle(fontSize: 11, color: Colors.grey))
                ],
              )
            ],
          )),
      SizedBox(width: 20),
    ],
  );
}
