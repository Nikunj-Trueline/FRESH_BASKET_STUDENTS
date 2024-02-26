import 'package:flutter/material.dart';
import '../../account/user_account_screen.dart';
import '../../cart/cart_screen.dart';
import '../../favourite/favourite_screen.dart';
import '../../serch/explore_screen.dart';
import '../../shop/shopping_screen.dart';
import 'bottomnavigationbar_home.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int currentIndex = 0;

  List<Widget> screens = [
    const ShoppingScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const FavouriteScreen(),
    const UserAccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: screens[currentIndex],
        bottomNavigationBar: bottomNavigationBarForHome(
          currentIndex: 0,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
