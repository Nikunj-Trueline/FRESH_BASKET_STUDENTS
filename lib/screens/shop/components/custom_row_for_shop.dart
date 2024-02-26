import 'package:flutter/material.dart';

Widget customRowForShop({required int currentIndex}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: currentIndex == 0 ? 10 : 10,
          width: currentIndex == 0 ? 20 : 10,
          decoration: BoxDecoration(
              color: currentIndex == 0 ? Colors.amber : Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: currentIndex == 1 ? 10 : 10,
          width: currentIndex == 1 ? 20 : 10,
          decoration: BoxDecoration(
              color: currentIndex == 1 ? Colors.amber : Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: currentIndex == 2 ? 10 : 10,
          width: currentIndex == 2 ? 20 : 10,
          decoration: BoxDecoration(
              color: currentIndex == 2 ? Colors.amber : Colors.amber.shade100,
              borderRadius: BorderRadius.circular(30)),
        ),
      )
    ],
  );
}
