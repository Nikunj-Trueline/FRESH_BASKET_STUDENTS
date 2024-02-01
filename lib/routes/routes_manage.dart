import 'package:flutter/material.dart';
import 'package:fresh_basket/screens/signin/signin_screen.dart';
import 'package:fresh_basket/screens/splash/splash_screen.dart';
import '../screens/onboarding/onboarding_screen.dart';

class AppRoutes {
  static const splashScreen = '/splashScreen';
  static const onBoardingScreen = '/onBoarding';
  static const signInScreen = '/signInScreen';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case signInScreen :
        return MaterialPageRoute(builder: (context) => SignInScreen(),);


    }

    return null;
  }
}
