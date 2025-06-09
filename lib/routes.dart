import 'package:flutter/material.dart';

import 'widgets/common/bottom_tab_bar.dart';
import 'screens/video_player_screen.dart';
import 'screens/event_screen.dart';
import 'screens/anime_search_screen.dart';

final routes = {
  // '/': (BuildContext context) => BottomTabBar(),
  '/': (BuildContext context) => AnimeSearchScreen(),
  '/video': (BuildContext context) => VideoPlayerScreen(),
  '/events': (BuildContext context) => EventScreen(),
};