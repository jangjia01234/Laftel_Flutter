import 'package:flutter/material.dart';

class MoreDetailButton extends StatelessWidget {
  const MoreDetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Row(
        children: [
          Text("더보기",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey)),
          Icon(
            Icons.chevron_right_rounded,
            size: 22,
            color: Colors.grey,
          )
        ],
      ),
    ]);
  }
}
