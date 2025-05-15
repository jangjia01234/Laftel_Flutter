import 'package:flutter/material.dart';

class HorizontalVideoList extends StatefulWidget {
  const HorizontalVideoList({super.key});

  @override
  State<HorizontalVideoList> createState() => _HorizontalVideoListState();
}

class _HorizontalVideoListState extends State<HorizontalVideoList> {
  // String title = "";

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("제목(임시)", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        HorizontalScrollList()
      ],
    );
  }
}

class HorizontalScrollList extends StatelessWidget {
  const HorizontalScrollList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              singleVideoThumbnailCard("제목"),
              SizedBox(width: 20),
              singleVideoThumbnailCard("제목"),
              SizedBox(width: 20),
              singleVideoThumbnailCard("제목"),
              SizedBox(width: 20),
              singleVideoThumbnailCard("제목"),
            ],
          ),
        ],
      ),
    );
  }
}

Widget singleVideoThumbnailCard(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(width: 200, height: 120, color: Colors.black.withOpacity(0.1)),
      Text(title)
    ],
  );
}