import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/common/bottom_tab_bar.dart';
import 'screens/video_player_screen.dart';
import 'screens/event_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
          return const BottomTabBar();
      }
    ),
    GoRoute(
        path: '/videos',
        name: 'videos',
        builder: (BuildContext context, GoRouterState state) {
          return const VideoPlayerScreen();
        }
    ),
    GoRoute(
        path: '/events',
        name: 'events',
        builder: (BuildContext context, GoRouterState state) {
          return const EventScreen();
        }
    ),
  ]
);