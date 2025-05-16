import 'package:flutter/material.dart';

Widget dayButton(String day) {
  return GestureDetector(
    onTap: () {},
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.black.withOpacity(0.2),
        ),
        Text(
          day,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    ),
  );
}
