import 'package:flutter/material.dart';
import 'package:layout/widgets/common/thin_divider.dart';

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
        body: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        ThinDivider(),
                        Padding(
                            padding: EdgeInsets.only(left: 16.0, right: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("선택된 필터"),

                                // TODO: 버튼 스타일 별도로 정의 (컴포넌트화)
                                OutlinedButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        Icon(Icons.filter_alt_outlined),
                                        Text("필터")
                                      ],
                                    )),
                              ],
                            )
                        ),
                       ThinDivider(),
                       Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("총 "),
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

                      for(num i = 0; i < 6; i++)
                        Column(
                          children: [
                            Container(height: 140, color: Colors.black.withOpacity(0.1)),
                            SizedBox(height: 20),
                          ],
                        ),
                    ]
                )
            )
        )
    );
  }
}
