import 'package:flutter/material.dart';

Widget headingRow(
    {required String textForHeading, required String textForButton}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      children: [
        Text(
          textForHeading,
          style: const TextStyle(
            fontFamily: 'poppins',
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        TextButton(onPressed: () {}, child: Text(textForButton))
      ],
    ),
  );
}
