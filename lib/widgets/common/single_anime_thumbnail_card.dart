import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../../models/like_model.dart';

class SingleAnimeThumbnailCard extends StatefulWidget {
  const SingleAnimeThumbnailCard({
    super.key,
    required this.animeId,
    this.width,
    this.imageHeight,
    this.cardHeight,
    this.animeTitle,
    this.thumbnailImage,
  });

  final int animeId;
  final double? width;
  final double? imageHeight;
  final double? cardHeight;
  final String? animeTitle;
  final String? thumbnailImage;

  @override
  State<SingleAnimeThumbnailCard> createState() =>
      _SingleAnimeThumbnailCardState();
}

class _SingleAnimeThumbnailCardState extends State<SingleAnimeThumbnailCard> {
  @override
  Widget build(BuildContext context) {
    final likeModel = context.watch<LikeModel>();
    final isLiked = likeModel.isLiked(widget.animeId);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TODO: /video -> /video/해당하는애니번호 로 이동하도록 설정
        GestureDetector(
            onTap: () => context.go('/video'),
          child:
          Container(
          color: Colors.blue,
          child:
          SizedBox(
            width: widget.width,
            height: widget.cardHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: 최근 본 작품은 별도로 썸네일 위에 플레이한 지점(하단바) 추가
                SizedBox(
                  width: widget.width,
                  height: widget.imageHeight,
                  child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network("${widget.thumbnailImage}",
                                  fit: BoxFit.cover),
                            ),
                            IconButton(
                              icon: Icon(
                                isLiked
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: 50,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                context.read<LikeModel>().toggleLike(widget.animeId);
                              },
                            )
                          ],
                        )),
                SizedBox(height: 4),
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
          )
        )
      ],
    );
  }
}
