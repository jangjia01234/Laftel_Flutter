import 'package:flutter/material.dart';
import '../data/event_data.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "이벤트",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 0.4,
                  color: Colors.black.withOpacity(0.15)),
              SizedBox(height: 20),
              Expanded(
                  child: SingleChildScrollView(
                      child: Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0),
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: eventList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Stack(
                                      children: [
                                        Opacity(
                                            opacity: eventList[index].isOpened
                                                ? 1
                                                : 0.4,
                                            child: Image.network(
                                                eventList[index]
                                                    .bannerImageUrl)),
                                        Opacity(
                                            opacity: eventList[index].isOpened
                                                ? 0
                                                : 1,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5, left: 5),
                                                child: Container(
                                                  padding: EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                    color: Colors.black,
                                                  ),
                                                  child: Text(
                                                    '지난 이벤트',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                )))
                                      ],
                                    )),
                                Opacity(
                                    opacity:
                                        eventList[index].isOpened ? 1 : 0.4,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 10, bottom: 2), child: Text(eventList[index].titleText,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))),
                                        Text(eventList[index].duration!,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey)),
                                      ],
                                    ))
                              ],
                            );
                          })),
                )
              ]))),
            ],
          ),
        ));
  }
}
