import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: appBarTheme(),
    elevatedButtonTheme: elevatedButtonTheme(),
    textButtonTheme: textButtonTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
  );
}

appBarTheme() {
  return AppBarTheme(
    elevation: 10,
    shadowColor: Colors.amber.shade400,
    color: Colors.amber.shade600,
    centerTitle: false,
    iconTheme: const IconThemeData(color: Colors.black, size: 30),
  );
}

inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: Colors.grey),
      gapPadding: 10);

  return InputDecorationTheme(
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
  );
}

textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(
        color: Colors.black, fontSize: 26, fontWeight: FontWeight.w400),
    bodyMedium: TextStyle(
        color: Colors.black, fontSize: 26, fontWeight: FontWeight.w400),
  );
}

textButtonTheme() {
  return TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      //elevation: const MaterialStatePropertyAll(4),
      shadowColor: const MaterialStatePropertyAll(Colors.amber),
      iconSize: const MaterialStatePropertyAll(50),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      foregroundColor: MaterialStateProperty.all(Colors.amber),
    ),
  );
}

elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 30),
      ),
      elevation: const MaterialStatePropertyAll(5),
      fixedSize: const MaterialStatePropertyAll(Size(180, 60)),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      backgroundColor: MaterialStateProperty.all(Colors.amber),
    ),
  );
}
