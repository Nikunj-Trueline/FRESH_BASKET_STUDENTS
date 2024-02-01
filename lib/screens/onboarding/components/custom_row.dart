import 'package:flutter/material.dart';

Widget customRow({required int currentIndex}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: currentIndex == 0 ? 20 : 15,
          width: currentIndex == 0 ? 20 : 15,
          decoration: BoxDecoration(
              color: currentIndex == 0 ? Colors.amber : Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: currentIndex == 1 ? 20 : 15,
          width: currentIndex == 1 ? 20 : 15,
          decoration: BoxDecoration(
              color: currentIndex == 1 ? Colors.amber : Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: currentIndex == 2 ? 20 : 15,
          width: currentIndex == 2 ? 20 : 15,
          decoration: BoxDecoration(
              color: currentIndex == 2 ? Colors.amber : Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30)),
        ),
      )
    ],
  );
}