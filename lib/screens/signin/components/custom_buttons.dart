import 'package:flutter/material.dart';
import '../../../constant/gradient.dart';

// Custom TextButton For Forgot Password.

Widget customTextButtonForForgot({
  required void Function()? onPressed,
  required String data,
  Color? color,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      foregroundColor: Colors.black54,
      backgroundColor: null,
      shadowColor: null,
      elevation: 0,
    ),
    child: Text(
      data,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    ),
  );
}

// Custom Button For SignIn

Widget customButtonForSignIn({
  required void Function()? onPressed,
  required String text,
  Color? color,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(10),
          fixedSize:  const Size(200, 55)),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
        ),
      ),
    ),
  );
}

Widget customTextButtonForSignUp({
  required void Function()? onPressed,
  required String data,
  Color? color,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return TextButton(
    onPressed: onPressed,
    style: TextButton.styleFrom(
      foregroundColor: Colors.black54,
      backgroundColor: null,
      shadowColor: null,
      elevation: 0,
    ),
    child: Text(
      data,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    ),
  );
}
