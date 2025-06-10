import 'package:flutter/material.dart';
import 'package:layout/widgets/common/thin_divider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../widgets/common/single_anime_thumbnail_card.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
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
    // MARK: 이름순 정렬
    results.sort((a, b) => a['name'].compareTo(b['name']));

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "보관함",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.delete_outline_rounded),
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.black.withOpacity(0.15)),
          SizedBox(height: 10),

          // - MARK: 탭뷰
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child:
              // TODO: Tab bar로 변경
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("최근 본"),
                  Text("보고싶다"),
                  Text("다운로드"),
                  Text("구매한"),
                  Text("정주행"),
                ],
              )),
          ThinDivider(),

          // - MARK: 작품 개수
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // TODO: 실제 숫자로 교체 필요
                  Text("작품 (123)")
                ],
              )),
          ThinDivider(),

          // - MARK: 세로 스크롤 리스트
          // TODO: 찜한 것들만 나오도록 실제 데이터 반영
          Expanded(
              child: SingleChildScrollView(
                  child: Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // 1 개의 한 행에 보여줄 개수
                          childAspectRatio: 1 / 0.8, // item 의 가로, 세로 비율
                          mainAxisSpacing: 0, // 수평 Padding
                          crossAxisSpacing: 0, // 수직 Padding
                        ),
                        itemCount: results.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                            child: SingleAnimeThumbnailCard(
                                width: 150,
                                imageHeight: 80,
                                cardHeight: 120,
                                animeTitle: results[index]['name'],
                                thumbnailImage: results[index]['image']),
                          );
                        },
                      ),
                    ),
                  ]))),
        ]));
  }
}
