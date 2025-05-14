import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/video_player_screen.dart';

final routes = {
  '/': (BuildContext context) => HomeScreen(),
  '/video': (BuildContext context) => VideoPlayerScreen()
};