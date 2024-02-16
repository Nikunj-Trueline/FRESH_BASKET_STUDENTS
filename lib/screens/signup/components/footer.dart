import 'package:flutter/material.dart';
import '../../../preference/shared_preference.dart';
import '../../../routes/routes_manage.dart';
import 'custom_elevated_button.dart';


Widget footerForSignUpForm({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.only(top: 5,bottom: 5,right: 10,left: 10),
    child: customButtonForSignUp(
        data: "Sign Up",
        onPressed: () {
          PreferenceServices.setData(key: PreferenceServices.isLoginKey, value: true);

          Navigator.pushNamedAndRemoveUntil(context, AppRoutes.homeScreen, (route) => false);
        },
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 1),
  );
}