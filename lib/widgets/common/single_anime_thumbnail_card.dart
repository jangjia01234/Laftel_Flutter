import 'package:flutter/material.dart';

class SingleAnimeThumbnailCard extends StatefulWidget {
  const SingleAnimeThumbnailCard({
    Key? key,
    this.width,
    this.height,
    this.animeTitle,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? animeTitle;

  @override
  State<SingleAnimeThumbnailCard> createState() => _SingleAnimeThumbnailCardState();
}

class _SingleAnimeThumbnailCardState extends State<SingleAnimeThumbnailCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius:
          BorderRadius.circular(4),
          child:
          Container(width: widget.width, height: widget.height, color: Colors.black.withOpacity(0.1)),
        ),
        Text("${widget.animeTitle}")
      ],
    );
  }
}
