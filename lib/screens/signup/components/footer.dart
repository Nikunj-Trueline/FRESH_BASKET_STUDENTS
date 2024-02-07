import 'package:flutter/material.dart';
import 'custom_elevated_button.dart';


Widget footerForSignUpForm() {
  return Padding(
    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
    child: customButtonForSignUp(
        data: "Sign Up",
        onPressed: () {},
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 1),
  );
}