import 'package:flutter/material.dart';

Widget dayButton(String day) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.grey,
      foregroundColor: Colors.indigoAccent,
    ),
    child: Text(day,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
  );
}