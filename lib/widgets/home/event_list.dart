import 'package:flutter/material.dart';
import '../common/more_detail_button.dart';
import '../../data/event_data.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    final openingEventList = eventList.where((item) {
      return item.isOpened == true;
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("진행 중인 이벤트",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(width: 10),
            MoreDetailButton()
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: openingEventList.map((item) {
                return Row(
                  children: [
                    Image.network(item.bannerThumbnailImageUrl!, width: 250),
                    SizedBox(width: 10),
                  ],
                );
              }).toList()
          ),
        )
      ],
    );
  }
}
