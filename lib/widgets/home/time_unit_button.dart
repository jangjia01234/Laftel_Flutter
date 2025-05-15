import 'package:flutter/material.dart';

Widget timeUnitButton(String timeUnit) {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      minimumSize: Size.zero,
      padding: EdgeInsets.only(top: 4, right: 12, bottom: 4, left: 12),
      side: BorderSide(width: 1.0, color: Colors.black.withOpacity(0.1)),
    ),
    child: Text(timeUnit,
        style: TextStyle(
            fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black)),
  );
}