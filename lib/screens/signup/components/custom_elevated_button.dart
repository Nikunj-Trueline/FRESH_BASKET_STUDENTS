import 'package:flutter/material.dart';
import '../../../constant/gradient.dart';

// Custom Button For SignUp

Widget customButtonForSignUp({
  required void Function()? onPressed,
  required String data,
  Color? color,
  String? fontFamily,
  double? fontSize,
  FontWeight? fontWeight,
  double? letterSpacing,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.all(10),
        fixedSize: const Size(250, 60)),
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
