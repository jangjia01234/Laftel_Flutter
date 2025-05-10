import 'package:flutter/material.dart';
import 'package:layout/pages/video_player_page.dart';
import 'pages/widgets/bottom_nav_bar.dart';
// import 'package:layout/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         home: Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.notifications_outlined), Icon(Icons.search)],
      ),
      body: ListView(
        children: [
          // HomePage(),
          VideoPlayerPage(),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(child: BottomNavBar()),
    ));
  }
}

