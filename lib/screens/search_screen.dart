import 'package:flutter/material.dart';
import 'package:layout/widgets/common/thin_divider.dart';

import '../widgets/common/single_anime_thumbnail_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "태그검색",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.black.withOpacity(0.15)
          ),

          // - MARK: 필터
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("선택된 필터"),

                  // TODO: 버튼 스타일 별도로 정의 (컴포넌트화)
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size.zero, // Set this
                      padding:
                      EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.1)),
                    ),
                    child: Row(
                      children: [
                        Icon(
                            Icons.filter_alt_outlined,
                            size: 14,
                          color: Colors.black,
                        ),
                        Text(
                            "필터",
                            style: TextStyle(
                                fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            )
                        )
                      ],
                    ),
                  ),
                ],
              )
          ),

          Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.black.withOpacity(0.15)
          ),
          SizedBox(height: 10),

          // - MARK: 작품 수, 정렬
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("총 "),
                      // TODO: 실제 숫자로 교체 필요
                      Text("12345", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("개의 작품이 검색되었어요!"),
                    ],
                  ),

                  // TODO: 버튼 스타일 별도로 정의 (컴포넌트화)
                  GestureDetector(
                    onTap: (){},
                    child: Row(
                      children: [
                        Text("인기순"),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  )
                ],
              )
          ),
          ThinDivider(),

          SizedBox(height: 10),

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
                              singleAnimeThumbnailCard(150, 80, "title"),
                              singleAnimeThumbnailCard(150, 80, "title"),
                            ],
                          ),

                          SizedBox(height: 20),
                        ],
                      ),
                  ])))
        ]));
  }
}
