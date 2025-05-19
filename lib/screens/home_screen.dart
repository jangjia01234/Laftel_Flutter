import 'package:flutter/material.dart';

import '../widgets/common/horizontal_video_list.dart';
import '../widgets/home/home_carousel_slide.dart';
import '../widgets/home/new_video_list.dart';
import '../widgets/home/hot_video_list.dart';
import '../widgets/home/event_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String listTitle = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 세로 스크롤에 따라 앱바 배경색이 투명 or 흰색으로 보이도록 해야함
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
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
                    // TODO: 썸네일 이미지 데이터에서 불러오기
                    HorizontalVideoList(listTitle: "최근 본 작품"),
                    SizedBox(height: 20),

                    NewVideoList(),
                    SizedBox(height: 20),

                    HorizontalVideoList(listTitle: "성우 코가 아오이 출연작 모음"),
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