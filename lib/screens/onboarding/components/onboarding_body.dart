import 'package:flutter/material.dart';
import 'package:fresh_basket/common/common_sizebox.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'package:fresh_basket/model/onborading_model.dart';
import 'package:fresh_basket/preference/shared_preference.dart';
import 'package:fresh_basket/routes/routes_manage.dart';
import 'package:fresh_basket/screens/onboarding/components/custom_row.dart';
import '../../../constant/gradient.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
        title: "ONLINE SHOPPING",
        image: "assets/images/ONLINE_SHOPPING.png",
        description: 'YOU CAN SHOPPING ANYTIME , ANYWHERE THAT YOU WANT'),
    OnBoardingModel(
        title: "MULTIPLE PAYMENT SYSTEM",
        image: "assets/images/ONLINE_PAYMENT.png",
        description: 'YOU CAN USE MULTI-TYPES OF PAYMENT SYSTEM.'),
    OnBoardingModel(
        title: "FREE SHIPPING AT YOUR HOME ",
        image: "assets/images/HOME_DELIVERY.png",
        description: ' PRODUCTS YOU ORDER WILL BE DELIVERED TO YOUR ADDRESS'),
  ];

  int currentIndex = 0;

  final _pageViewController= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              height: MediaQueryHelper.height * 830,
              child: PageView.builder(
                controller: _pageViewController,
                itemCount: onBoardingData.length,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Expanded(
                            child: Image(
                          image: AssetImage(onBoardingData[index].image),
                        )),
                        commonSizeBox(height: MediaQueryHelper.height * 20),
                        Text(onBoardingData[index].title,
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            textAlign: TextAlign.center),
                        commonSizeBox(height: MediaQueryHelper.height * 28),
                        Text(onBoardingData[index].description,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  );
                },
              )),
          commonSizeBox(height: MediaQueryHelper.height * 30),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 10),
                child: customRow(currentIndex: currentIndex),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, top: 10),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex < onBoardingData.length - 1) {
                        currentIndex++;
                        _pageViewController.animateToPage(currentIndex, duration: const Duration(milliseconds: 300), curve: Curves.linear);
                      }else{

                        PreferenceServices.setData(key: PreferenceServices.onboardingKey, value: true);

                        Navigator.pushReplacementNamed(context, AppRoutes.signInScreen);
                      }
                    });
                  },
                  backgroundColor: primaryColor1,
                  child: const Icon(
                    Icons.navigate_next,
                    size: 30,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
