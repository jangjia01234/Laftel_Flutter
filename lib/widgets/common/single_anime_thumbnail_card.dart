import 'package:flutter/material.dart';

Widget singleAnimeThumbnailCard(double width, double height, String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(width: width, height: height, color: Colors.black.withOpacity(0.1)),
      Text(title)
    ],
  );
}