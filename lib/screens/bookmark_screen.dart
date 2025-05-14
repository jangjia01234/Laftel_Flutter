import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () { Navigator.pop(context);},
                  child: Icon(Icons.close_rounded, color: Colors.black, size: 30),
                ),
                Text("bookmark screen"),
              ],
            )
        ),
    );
  }
}
