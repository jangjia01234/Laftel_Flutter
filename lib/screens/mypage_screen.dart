import 'package:flutter/material.dart';

class MypageScreen extends StatelessWidget {
  const MypageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 40,
                      bottom: 20
                  ),
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // TODO: 버튼으로 변경, 실제 데이터 반영
                                  Text("니노", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                                  Icon(Icons.chevron_right_rounded, size: 30)
                                ],
                              ),
                              SizedBox(height: 5),
                              Text("lafteluser01@gmail.com", style: TextStyle(fontSize: 12, color: Colors.grey)),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("별점"),
                                      SizedBox(width: 4),
                                      Text("123", style: TextStyle(fontWeight: FontWeight.bold)),
                                      SizedBox(width: 10)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("리뷰"),
                                      SizedBox(width: 4),
                                      Text("123", style: TextStyle(fontWeight: FontWeight.bold)),
                                      SizedBox(width: 10)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("댓글"),
                                      SizedBox(width: 4),
                                      Text("123", style: TextStyle(fontWeight: FontWeight.bold)),
                                      SizedBox(width: 10)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(radius: 30)
                        ],
                      ),
                      SizedBox(height: 20),
                      ClipRRect(
                        borderRadius:
                        BorderRadius.circular(4),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          color: Colors.pink.withOpacity(0.2),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(width: 30, height: 30, color: Colors.white),
                                    SizedBox(width: 10),
                                    Text("Lv.6"),
                                    SizedBox(width: 5),
                                    Text("전설", style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.info_outline_rounded, size: 15),
                                ),
                              ],
                            ),
                          )
                        ),
                      ),
                    ],
                  )
                ),
                
                Container(height: 10, color: Colors.black.withOpacity(0.1)),

                // TODO: 컴포넌트화해서 재사용하는 방식으로 변경
                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.credit_card_rounded),
                            SizedBox(width: 10),
                            Text("라프텔 멤버십"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              // TODO: 실제 데이터로 교체
                              Text("프리미엄", style: TextStyle(color: Colors.grey)),
                              Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        )
                      ],
                    )
                ),

                Container(height: 10, color: Colors.black.withOpacity(0.1)),

                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.toll_rounded),
                            SizedBox(width: 10),
                            Text("내 포인트"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Text("500P", style: TextStyle(color: Colors.grey)),
                              Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        )
                      ],
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.confirmation_num_outlined),
                            SizedBox(width: 10),
                            Text("쿠폰 등록"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              Text("500P", style: TextStyle(color: Colors.grey)),
                              Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        )
                      ],
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.description_outlined),
                            SizedBox(width: 10),
                            Text("이용 내역"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Icon(Icons.chevron_right_rounded),
                        )
                      ],
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.celebration_outlined),
                            SizedBox(width: 10),
                            Text("이벤트"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Icon(Icons.chevron_right_rounded),
                        )
                      ],
                    )
                ),

                Container(height: 10, color: Colors.black.withOpacity(0.1)),

                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.settings_outlined),
                            SizedBox(width: 10),
                            Text("설정"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Icon(Icons.chevron_right_rounded),
                        )
                      ],
                    )
                ),
                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.headset_mic_outlined),
                            SizedBox(width: 10),
                            Text("고객센터"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Icon(Icons.chevron_right_rounded),
                        )
                      ],
                    )
                ),

                Container(height: 10, color: Colors.black.withOpacity(0.1)),

                Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        top: 20,
                        bottom: 20
                    ),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.logout_rounded),
                            SizedBox(width: 10),
                            Text("로그아웃"),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Icon(Icons.chevron_right_rounded),
                        )
                      ],
                    )
                ),

                Container(height: 10, color: Colors.black.withOpacity(0.1)),
              ]
          )
        )
      )
    );
  }
}
