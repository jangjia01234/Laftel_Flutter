import 'package:flutter/material.dart';

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
        child: Column(children: [
          Container(
              width: double.infinity,
              height: 0.4,
              color: Colors.black.withOpacity(0.15)
          ),
          Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: [
                  Text("event screen"),
                  Text("event screen"),
                  Text("event screen"),
                  Text("event screen"),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
