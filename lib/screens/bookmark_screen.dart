import 'package:flutter/material.dart';
import 'package:layout/data/anime_data.dart';
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
                  childAspectRatio: 1 / 1, // item 의 가로, 세로 비율
                  mainAxisSpacing: 0, // 수평 Padding
                  crossAxisSpacing: 0, // 수직 Padding
                ),
                itemCount: animeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: SingleAnimeThumbnailCard(
                        width: 150,
                        height: 80,
                        animeTitle: animeList[index].animeTitle,
                        thumbnailImage: animeList[index].thumbnailImageUrl),
                  );
                },
              ),
            ),
          ]))),
        ]));
  }
}
