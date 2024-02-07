import 'package:flutter/material.dart';

InputDecoration decorationForTextFormField(
    {String? labelText,
      String? hintText,
      bool? alignLabelWithHint,
      Widget? suffixIcon,
      Widget? suffix,
      void Function()? onPressedForIcon}) {
  return InputDecoration(
    alignLabelWithHint: alignLabelWithHint,
    labelText: labelText,
    hintText: hintText,
    suffix: suffix,
    labelStyle: const TextStyle(fontSize: 24, color: Colors.black),
    hintStyle: const TextStyle(fontSize: 20, color: Colors.black),
    suffixIcon: suffixIcon,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    // Set border for focused state
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 2, color: Colors.amber),
      borderRadius: BorderRadius.circular(13),
    ),
  );
}