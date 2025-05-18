import 'package:flutter/material.dart';
import 'package:layout/widgets/common/thin_divider.dart';
import '../widgets/common/single_anime_thumbnail_card.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          Expanded(
              child: SingleChildScrollView(
                  child: Column(children: [
            for (num i = 0; i < 6; i++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SingleAnimeThumbnailCard(
                          width: 150, height: 80, animeTitle: "보관애니제목1"),
                      SingleAnimeThumbnailCard(
                          width: 150, height: 80, animeTitle: "보관애니제목2"),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
          ])))
        ]));
  }
}
