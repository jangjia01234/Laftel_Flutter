import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../common/single_anime_thumbnail_card.dart';

class RecentVideoList extends StatefulWidget {
  const RecentVideoList({super.key});

  @override
  State<RecentVideoList> createState() => _RecentVideoListState();
}

class _RecentVideoListState extends State<RecentVideoList> {
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
    fetchSearch('문호 스트레이독스');
  }

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
            children: results.map((item) {
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
                                animeId: item['id'],
                                width: 200,
                                imageHeight: 100,
                                cardHeight: 140,
                                animeTitle: item['name'],
                                thumbnailImage: item['image']),
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
