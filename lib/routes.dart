import 'package:flutter/material.dart';

import 'widgets/common/bottom_tab_bar.dart';
import 'screens/video_player_screen.dart';
import 'screens/event_screen.dart';
import 'screens/http_rest_api.dart';

final routes = {
  // '/': (BuildContext context) => BottomTabBar(),
  '/': (BuildContext context) => HttpRestApi(),
  '/video': (BuildContext context) => VideoPlayerScreen(),
  '/events': (BuildContext context) => EventScreen(),
};