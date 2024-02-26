import 'package:flutter/material.dart';

class UserAccountBody extends StatefulWidget {
  const UserAccountBody({super.key});

  @override
  State<UserAccountBody> createState() => _UserAccountBodyState();
}

class _UserAccountBodyState extends State<UserAccountBody> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("A C C O U N T  S C R E E N"),
      ),
    );
  }
}
