import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [Icon(Icons.home_outlined), Text("홈")]),
        Column(children: [Icon(Icons.check_box_outlined), Text("태그검색")]),
        Column(children: [Icon(Icons.bookmark_border_outlined), Text("보관함")]),
        Column(children: [Icon(Icons.account_circle_outlined), Text("MY")]),
      ],
    );
  }
}