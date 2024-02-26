import 'package:flutter/material.dart';
import '../../../constant/gradient.dart';

BottomNavigationBar bottomNavigationBarForHome(
    {void Function(int)? onTap, required int currentIndex}) {
  return BottomNavigationBar(
    iconSize: 30,
    backgroundColor: primaryColor1,
    elevation: 8,
    onTap: onTap,
    currentIndex: currentIndex,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    selectedFontSize: 14,
    selectedIconTheme: const IconThemeData(color: Colors.black, size: 50),
    selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    unselectedItemColor: Colors.black87,
    unselectedFontSize: 14,
    unselectedIconTheme: const IconThemeData(color: Colors.black87, size: 30),
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/icons/home1.png',
          height: 30,
          width: 30,
        ),
        label: "SHOP",
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/search1.png',
            height: 30,
            width: 30,
          ),
          label: "EXPLORE"),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/shoping1.png',
            height: 30,
            width: 30,
          ),
          label: "CART"),
      BottomNavigationBarItem(
          icon: Image.asset(
            'assets/icons/heart.png',
            height: 30,
            width: 30,
          ),
          label: "FAVOURITE"),
      BottomNavigationBarItem(
        label: "ACCOUNT",
        icon: Image.asset(
          'assets/icons/user1.png',
          height: 30,
          width: 30,
        ),
      ),
    ],
  );
}
