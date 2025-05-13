import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/home_carousel_slide.dart';
import '../widgets/horizontal_video_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.notifications_outlined),
          Icon(Icons.search)
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/video');
          },
          child: Text('go to video player screen'),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(child: BottomNavBar()),
    );

    //   Column(
    //   children: [
    //     HomeCarouselSlide(),
    //     Padding(
    //         padding: EdgeInsets.all(16.0),
    //         child: Column(
    //           children: [
    //             // HorizontalVideoList("최근 본 작품"),
    //             SizedBox(height: 20),
    //             NewVideoList(),
    //             SizedBox(height: 20),
    //             // HorizontalVideoList("성우 코가 아오이 출연작 모음"),
    //             SizedBox(height: 20),
    //             HotVideoList(),
    //             SizedBox(height: 20),
    //             SizedBox(height: 20),
    //             // HorizontalVideoList("일상 속 따스한 미소"),
    //             SizedBox(height: 20),
    //             // HorizontalVideoList("내 사전에 풀리지 않는 사건이란 없어"),
    //             EventList(),
    //             SizedBox(height: 20),
    //           ],
    //         ))
    //   ],
    // );
  }
}

// Widget videoList(String title) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//       HorizontalScrollList()
//     ],
//   );
// }

// // MARK: 공통 뷰 위젯
// Widget singleVideoThumbnailCard(String title) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Container(width: 200, height: 120, color: Colors.grey),
//       Text(title)
//     ],
//   );
// }

// class HorizontalScrollList extends StatelessWidget {
//   const HorizontalScrollList({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             children: [
//               singleVideoThumbnailCard("제목"),
//               SizedBox(width: 20),
//               singleVideoThumbnailCard("제목"),
//               SizedBox(width: 20),
//               singleVideoThumbnailCard("제목"),
//               SizedBox(width: 20),
//               singleVideoThumbnailCard("제목"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class MoreDetailNavButton extends StatelessWidget {
  const MoreDetailNavButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      TextButton(
          onPressed: () {
            // action
          },
          child: Row(
            children: [
              Text("더보기",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
              Icon(
                Icons.chevron_right_rounded,
                size: 20,
                color: Colors.grey,
              )
            ],
          )),
    ]);
  }
}

Widget dayButton(String day) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.grey,
      foregroundColor: Colors.indigoAccent,
    ),
    child: Text(day,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
  );

  //   FilledButton(
  //   onPressed: () {},
  //   style: OutlinedButton.styleFrom(
  //       minimumSize: Size.zero,
  //       padding: EdgeInsets.only(top: 8, right: 12, bottom: 8, left: 12),
  //       backgroundColor: Colors.grey),
  //   child: Text(day,
  //       style: TextStyle(
  //           fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
  // );
}

Widget timeUnitButton(String timeUnit) {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.only(top: 4, right: 12, bottom: 4, left: 12),
      side: BorderSide(width: 1.0, color: Colors.grey),
    ),
    child: Text(timeUnit,
        style: TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black)),
  );
}

// MARM: 요일별 신작
class NewVideoList extends StatelessWidget {
  const NewVideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Text("요일별 신작",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.zero, // Set this
                  padding:
                      EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  side: BorderSide(width: 1.0, color: Colors.grey),
                ),
                child: Text('업로드 공지',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              )
            ]),
            MoreDetailNavButton()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            dayButton("월"),
            dayButton("화"),
            dayButton("수"),
            dayButton("목"),
            dayButton("금"),
            dayButton("토"),
            dayButton("일"),
          ],
        ),
        // HorizontalScrollList()
      ],
    );
  }
}

// MARM: 라프텔 인기 애니
class HotVideoList extends StatelessWidget {
  const HotVideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("라프텔 인기 애니",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
        RankingScrollView()
      ],
    );
  }
}

class RankingScrollView extends StatelessWidget {
  const RankingScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                hotSingleVideoThumbnailCard("1", "주술회전 1기 part 1", "판타지/액션"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("2", "주술회전 2기 part 2", "판타지/액션"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("3", "(무삭제) 귀멸의 칼날", "판타지/액션"),
              ],
            ),
            Column(
              children: [
                hotSingleVideoThumbnailCard(
                    "4", "전생했더니 슬라임이었던 건에 대하여", "이세계/판타지"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("5", "(더빙) 꿈빛 파티시엘 리마스터", "로맨스/음식"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard(
                    "6", "(자막) 귀멸의 칼날: 환락의 거리편", "판타지/액션"),
              ],
            ),
            Column(
              children: [
                hotSingleVideoThumbnailCard("7", "하이큐!! 1기", "스포츠"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("8", "(자막) 하이큐!! 2기", "스포츠"),
                SizedBox(height: 10),
                hotSingleVideoThumbnailCard("9", "(자막) 데스노트 리마스터", "판타지/추리"),
              ],
            )
          ],
        ));
  }
}

Widget hotSingleVideoThumbnailCard(String rank, String title, String genre) {
  return Row(
    children: [
      Container(width: 120, height: 80, color: Colors.grey),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Text(rank,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 12)),
              Text(genre, style: TextStyle(fontSize: 10, color: Colors.grey))
            ],
          )
        ],
      )
    ],
  );
}

// MARK: 진행 중인 이벤트
class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("진행 중인 이벤트",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
            MoreDetailNavButton()
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(width: 250, height: 80, color: Colors.grey),
              SizedBox(width: 10),
              Container(width: 250, height: 80, color: Colors.grey),
              SizedBox(width: 10),
              Container(width: 250, height: 80, color: Colors.grey),
            ],
          ),
        )
      ],
    );
  }
}
