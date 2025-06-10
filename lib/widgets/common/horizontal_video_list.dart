import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../common/single_anime_thumbnail_card.dart';

class HorizontalVideoList extends StatefulWidget {
  const HorizontalVideoList({
    Key? key,
    this.listTitle,
  }) : super(key: key);

  final String? listTitle;

  @override
  State<HorizontalVideoList> createState() => _HorizontalVideoListState();
}

class _HorizontalVideoListState extends State<HorizontalVideoList> {
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

  double width = 0;
  double height = 0;
  String animeTitle = "";
  String thumbnailImage = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${widget.listTitle}",
            style: TextStyle(
                fontSize: widget.listTitle != null ? 18 : 0,
                fontWeight: FontWeight.w600)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: results.map((item) {
              return Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleAnimeThumbnailCard(
                          width: 200,
                          imageHeight: 100,
                          cardHeight: 140,
                          animeTitle: item.animeTitle,
                          thumbnailImage: item.thumbnailImageUrl),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
