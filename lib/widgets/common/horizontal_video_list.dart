import 'package:flutter/material.dart';
import '../common/single_anime_thumbnail_card.dart';

class HorizontalVideoList extends StatefulWidget {
  const HorizontalVideoList({
    Key? key,
    this.listTitle,
  }) : super(key: key);

  final String? listTitle;

  @override
  State<HorizontalVideoList> createState() => _HorizontalVideoListState();
}

class _HorizontalVideoListState extends State<HorizontalVideoList> {
  double width = 0;
  double height = 0;
  String animeTitle = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${widget.listTitle}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (num i = 0; i < 4; i++)
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SingleAnimeThumbnailCard(
                            width: 200, height: 120, animeTitle: "애니제목"),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
