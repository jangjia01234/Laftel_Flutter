import 'package:flutter/material.dart';

class ThinDivider extends StatelessWidget {
  const ThinDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child:
        Container(
            width: double.infinity,
            height: 0.4,
            color: Colors.black.withOpacity(0.15)
        )
    );
  }
}
