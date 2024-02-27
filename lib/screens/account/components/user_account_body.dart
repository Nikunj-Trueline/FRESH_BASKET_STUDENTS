import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fresh_basket/firebase_service/firebase_servicies.dart';
import 'package:fresh_basket/preference/shared_preference.dart';
import 'package:fresh_basket/routes/routes_manage.dart';

class UserAccountBody extends StatefulWidget {
  const UserAccountBody({super.key});

  @override
  State<UserAccountBody> createState() => _UserAccountBodyState();
}

class _UserAccountBodyState extends State<UserAccountBody> {
  FirebaseServices obj = FirebaseServices();

  @override
  void initState() {
    print("------------1");
    getData();
    print("------------5");
    super.initState();
  }

  List userAllData = [];

  Future<void> getData() async {
    Map? data = await obj.userGetData();

    print("------------2");

    if (data != null) {
      data.forEach((key, value) {
        print("------------3");
        userAllData.add(value);
        print("------------4");
        print(userAllData);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(userAllData.isNotEmpty ? userAllData[0]["email"] : "Hello"),
            Text(
                userAllData.isNotEmpty ? userAllData[0]["firstName"] : "Hello"),
            Text(userAllData.isNotEmpty ? userAllData[0]["contact"] : "Hello"),
            ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();

                  PreferenceServices.setData(
                      key: PreferenceServices.isLoginKey, value: false);

                  Navigator.pushNamedAndRemoveUntil(
                      context, AppRoutes.signInScreen, (route) => false);
                },
                child: Text("logout")),
          ],
        ),
      ),
    );
  }
}
