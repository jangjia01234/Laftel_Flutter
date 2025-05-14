import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
                Text("search screen"),
              ],
            )
        ),

    );
  }
}
