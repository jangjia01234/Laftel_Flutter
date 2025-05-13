import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/video_player_page.dart';

final routes = {
  // TODO: Page -> Screen으로 다시 네이밍 필요
  '/': (BuildContext context) => HomePage(),
  '/video': (BuildContext context) => VideoPlayerPage()
};