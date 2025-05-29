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
  State<SingleAnimeThumbnailCard> createState() =>
      _SingleAnimeThumbnailCardState();
}

class _SingleAnimeThumbnailCardState extends State<SingleAnimeThumbnailCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TODO: /video -> /video/해당하는애니번호 로 이동하도록 설정
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/video');
          },
          child: SizedBox(
            width: widget.width,
            height: widget.height! * 1.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO: 최근 본 작품은 별도로 썸네일 위에 플레이한 지점(하단바) 추가
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network("${widget.thumbnailImage}"),
                ),
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
                // TODO: 실제 데이터로 교체 (데이터 구조 수정 - 최근 시청한 회차 저장)
                Text("0화",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600))
              ],
            ),
          ),
        )
      ],
    );
  }
}
