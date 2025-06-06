import 'package:flutter/material.dart';

import '../widgets/common/horizontal_video_list.dart';
import '../widgets/home/home_carousel_slide.dart';
import '../widgets/home/recent_video_list.dart';
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
      // TODO: 스크롤 내리면 앱바 배경색이 '흰색'으로 보이도록 해야함
      // FIXME: 스크롤 내리면 앱바 배경색이 '보라색'으로 보이는 이슈가 있음
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Laftel",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.notifications_outlined, color: Colors.white),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.search, color: Colors.white),
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
                height: MediaQuery.of(context).size.height * 0.62,
                child: HomeCarouselSlide(),
              ),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(children: [
                    RecentVideoList(),
                    SizedBox(height: 20),

                    NewVideoList(),
                    SizedBox(height: 20),

                    HorizontalVideoList(listTitle: "성우 코가 아오이 출연작 모음"),
                    SizedBox(height: 20),

                    HotVideoList(),
                    SizedBox(height: 20),

                    EventList(),
                    SizedBox(height: 40),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}