import 'package:flutter/material.dart';

Widget countryChoseButton(int index, String text, VoidCallback onPressed) {
  return Container(
    margin: EdgeInsets.only(top: 30.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 223, 211, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
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
