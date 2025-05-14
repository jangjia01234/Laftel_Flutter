import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Column(children: [Icon(Icons.home_outlined), Text("홈")]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/search');
          },
          child: Column(children: [Icon(Icons.home_outlined), Text("태그검색")]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/bookmark');
          },
          child: Column(children: [Icon(Icons.home_outlined), Text("보관함")]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/mypage');
          },
          child: Column(children: [Icon(Icons.home_outlined), Text("MY")]),
        ),
      ],
    );
  }
}