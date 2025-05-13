import 'package:flutter/material.dart';
import '../common/more_detail_button.dart';
import '../common/day_button.dart';

class NewVideoList extends StatelessWidget {
  const NewVideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Text("요일별 신작",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
            children: [
              dayButton("월"),
              dayButton("화"),
              dayButton("수"),
              dayButton("목"),
              dayButton("금"),
              dayButton("토"),
              dayButton("일"),
            ],
          ),
          // HorizontalScrollList()
        ],
      );
  }
}