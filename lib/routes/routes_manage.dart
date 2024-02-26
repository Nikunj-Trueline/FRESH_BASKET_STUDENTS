import 'package:flutter/material.dart';
import 'package:fresh_basket/screens/home/home_screen.dart';
import 'package:fresh_basket/screens/signin/signin_screen.dart';
import 'package:fresh_basket/screens/signup/signup_screen.dart';
import 'package:fresh_basket/screens/splash/splash_screen.dart';
import '../screens/onboarding/onboarding_screen.dart';

class AppRoutes {
  static const splashScreen = '/splashScreen';
  static const onBoardingScreen = '/onBoarding';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static const homeScreen = '/homeScreen';
  static const shopScreen = '/shopScreen';
  static const cartScreen = '/cartScreen';
  static const exploreScreen = '/exploreScreen';
  static const favouriteScreen = '/favouriteScreen';
  static const accountScreen = '/accountScreen';

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

      case signInScreen:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );

      case signUpScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );

      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case shopScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case cartScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case exploreScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case favouriteScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case accountScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
    }

    return null;
  }
}
