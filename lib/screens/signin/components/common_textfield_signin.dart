import 'package:flutter/material.dart';

TextFormField commonTextFieldForSignInField({
  String? hintText,
  void Function()? onTap,
  IconData? iconForSuffix,
  TextEditingController? controller,
  required bool status,
}) {
  return TextFormField(
    cursorHeight: 32,
    cursorWidth: 3,
    controller: controller,
    cursorColor: Colors.amber.shade700,
    onTap: onTap,
    obscureText: status,
   // style: textStyleForTextFormField(),
    decoration: InputDecoration(
      suffixIcon: IconButton(
        icon: Icon(
          iconForSuffix,
          size: 35,
        ),
        onPressed: onTap,
        padding: const EdgeInsets.all(10),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.amber.shade700),
      ),
    ),
  );
}

// This Is Common textField For signIn Screen.


TextFormField commonTextFieldForSignInField1({
  String? hintText,
  void Function()? onTap,
  IconData? iconForSuffix,
  TextEditingController? controller,
  required bool status,
}) {
  return TextFormField(
    cursorHeight: 32,
    cursorWidth: 3,
    controller: controller,
    cursorColor: Colors.amber.shade700,
    onTap: onTap,
    obscureText: status,
    // style: textStyleForTextFormField(),
    decoration: InputDecoration(
      suffixIcon: IconButton(
        icon: Icon(
          iconForSuffix,
          size: 35,
        ),
        onPressed: onTap,
        padding: const EdgeInsets.all(10),
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.amber.shade700),
      ),
    ),
  );
}