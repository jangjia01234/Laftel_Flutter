import 'package:flutter/material.dart';

import 'widgets/common/bottom_tab_bar.dart';
import 'screens/video_player_screen.dart';
import 'screens/event_screen.dart';

final routes = {
  '/': (BuildContext context) => BottomTabBar(),
  '/video': (BuildContext context) => VideoPlayerScreen(),
  '/events': (BuildContext context) => EventScreen(),
};