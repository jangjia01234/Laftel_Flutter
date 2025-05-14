import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/video_player_screen.dart';
import 'screens/search_screen.dart';
import 'screens/bookmark_screen.dart';
import 'screens/mypage_screen.dart';

final routes = {
  '/': (BuildContext context) => HomeScreen(),
  '/video': (BuildContext context) => VideoPlayerScreen(),
  '/search': (BuildContext context) => SearchScreen(),
  '/bookmark': (BuildContext context) => BookmarkScreen(),
  '/mypage': (BuildContext context) => MypageScreen(),
};