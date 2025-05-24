import 'package:flutter/material.dart';

class SingleAnimeThumbnailCard extends StatefulWidget {
  const SingleAnimeThumbnailCard({
    super.key,
    this.width,
    this.height,
    this.animeTitle,
    this.thumbnailImage,
  });

  final double? width;
  final double? height;
  final String? animeTitle;
  final String? thumbnailImage;

  @override
  State<SingleAnimeThumbnailCard> createState() => _SingleAnimeThumbnailCardState();
}

class _SingleAnimeThumbnailCardState extends State<SingleAnimeThumbnailCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: widget.width,
          height: widget.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child:
                Image.asset('assets/images/home_carousel/carousel_thumbnail_title_1.png'),
                // Image.network("${widget.thumbnailImage}"),
              ),
              SizedBox(height: 10),
              RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                text: TextSpan(
                    text: widget.animeTitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    )),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
