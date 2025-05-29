import 'package:flutter/material.dart';
import '../common/more_detail_button.dart';
import '../common/day_button.dart';
import '../common/horizontal_video_list.dart';

class NewVideoList extends StatelessWidget {
  const NewVideoList({super.key});

  @override
  Widget build(BuildContext context) {
    List days = ["월", "화", "수", "목", "금", "토", "일"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Text("요일별 신작",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(width: 10),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.zero, // Set this
                  padding:
                      EdgeInsets.only(top: 5, right: 10, bottom: 5, left: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  side: BorderSide(width: 1.0, color: Colors.grey),
                ),
                child: Text('업로드 공지',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              )
            ]),
            MoreDetailButton()
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [for (var day in days) dayButton(day)]),
        SizedBox(height: 10),
        HorizontalVideoList(),
        // HorizontalScrollList()
      ],
    );
  }
}
