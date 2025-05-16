import 'package:flutter/material.dart';
import '../common/more_detail_button.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("진행 중인 이벤트",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
            MoreDetailButton()
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (num i = 0; i < 4; i++)
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(width: 250, height: 80, color: Colors.black.withOpacity(0.1)),
                    ),
                    SizedBox(width: 10),
                  ],
                )
            ],
          ),
        )
      ],
    );
  }
}
