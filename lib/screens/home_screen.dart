import 'package:flutter/material.dart';

import '../widgets/common/horizontal_video_list.dart';
import '../widgets/home/home_carousel_slide.dart';
import '../widgets/home/new_video_list.dart';
import '../widgets/home/hot_video_list.dart';
import '../widgets/home/event_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 앱바 삭제하고 stack으로 캐러셀 위에 tools 달아줄 예정 (앱바 배경색 이슈)
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Laftel",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.notifications_outlined),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.search),
          ),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child:
                // TODO: 현재 임시로 캐러셀에 Navigation 달아둔 상태. 수정 필요
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/video');
                  },
                  child: HomeCarouselSlide(),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(children: [
                    // TODO: 파라미터로 제목 넘겨주기
                    // TODO: 썸네일 이미지 데이터에서 불러오기
                    // "최근 본 작품"
                    HorizontalVideoList(),
                    SizedBox(height: 20),

                    // FIXME: 요일 버튼 박스 width 넘침 이슈
                    NewVideoList(),
                    SizedBox(height: 20),

                    // "성우 코가 아오이 출연작 모음"
                    HorizontalVideoList(),
                    SizedBox(height: 20),

                    HotVideoList(),
                    SizedBox(height: 20),

                    EventList(),
                    SizedBox(height: 20),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
