import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui';

import 'time_unit_button.dart';

class HotVideoList extends StatefulWidget {
  const HotVideoList({super.key});

  @override
  State<HotVideoList> createState() => _HotVideoListState();
}

class _HotVideoListState extends State<HotVideoList> {
  List<dynamic> results = [];

  Future<void> fetchSearch(String query) async {
    final url = Uri.parse('http://10.0.2.2:5000/search/$query');
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      setState(() {
        results = json.decode(resp.body);
      });
    } else {
      throw Exception('서버 호출 실패');
    }
  }

  @override
  void initState() {
    super.initState();

    // TODO: 테스트용 -> 전체 검색결과로 변경
    fetchSearch('all');
  }

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

class RankingScrollView extends StatefulWidget {
  const RankingScrollView({super.key});

  @override
  State<RankingScrollView> createState() => _RankingScrollViewState();
}

class _RankingScrollViewState extends State<RankingScrollView> {
  List<dynamic> results = [];

  Future<void> fetchSearch(String query) async {
    final url = Uri.parse('http://10.0.2.2:5000/search/$query');
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      setState(() {
        results = json.decode(resp.body);
      });
    } else {
      throw Exception('서버 호출 실패');
    }
  }

  @override
  void initState() {
    super.initState();

    // TODO: 테스트용 -> 전체 검색결과로 변경
    fetchSearch('all');
  }

  @override
  Widget build(BuildContext context) {
    // MARK: 인기순 정렬
    results.sort((a, b) => a.rank.compareTo(b.rank));

    return SizedBox(
        width: double.infinity,
        height: 300,
        child: ScrollConfiguration(
            behavior: AppScrollBehavior(),
            // TODO: 조건(역대, 분기 등)에 따른 개수 제한 구현 (ex. 역대~30위, 분기~12위)
            child: GridView(
                scrollDirection: Axis.horizontal,
                physics: PageScrollPhysics(),
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 2.0,
                    crossAxisCount: 3,
                    childAspectRatio: 0.35
                ),
                children: results.map((item) => ItemWidget(
                  imageUrl: item['image'],
                  rank: item['content_rating'],
                  title: item['name'],
                  genre: item['url'],
                )).toList()
            )
        )
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key,
      required this.imageUrl,
      required this.rank,
      required this.title,
      required this.genre});

  final String imageUrl;
  final String rank;
  final String title;
  final String genre;

  @override
  Widget build(BuildContext context) {
    return hotSingleVideoThumbnailCard(imageUrl, rank, title, genre);
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

Widget hotSingleVideoThumbnailCard(
    String imageUrl, String rank, String title, String genre) {
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
