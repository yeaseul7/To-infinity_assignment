import 'package:flutter/material.dart';

Widget countryChoseButton(int index, String text, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    ),
  );
}
