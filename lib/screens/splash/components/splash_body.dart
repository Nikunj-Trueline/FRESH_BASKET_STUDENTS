import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fresh_basket/constant/gradient.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'package:fresh_basket/preference/shared_preference.dart';
import 'package:fresh_basket/routes/routes_manage.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      if (PreferenceServices.getBoolData(key: PreferenceServices.isLoginKey)) {
        Navigator.pushNamedAndRemoveUntil(
            context, AppRoutes.homeScreen, (route) => false);
      } else {
        if (PreferenceServices.getBoolData(
            key: PreferenceServices.onboardingKey)) {
          Navigator.pushReplacementNamed(context, AppRoutes.signInScreen);
        } else {
          Navigator.pushReplacementNamed(context, AppRoutes.onBoardingScreen);
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQueryHelper.height * double.infinity,
            width: MediaQueryHelper.width * double.infinity,
            decoration: const BoxDecoration(
              gradient: splashGradient,
            ),
          ),
          Center(
            child: Image.asset('assets/images/splash_done.png'),
          )
        ],
      ),
    );
  }
}
