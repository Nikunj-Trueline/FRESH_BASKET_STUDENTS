import 'package:flutter/material.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'package:fresh_basket/screens/signup/components/signup_form.dart';
import 'footer.dart';
import 'header_signup.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: ListView(


        children: [
          Container(
            // color: Colors.deepPurple,
            height: MediaQueryHelper.height * 310,
            width: MediaQueryHelper.width * double.infinity,
            //  color: Colors.yellow,
            margin: EdgeInsets.all(10),
            child: LayoutHeader(),
          ),
          Container(
            height: MediaQueryHelper.height * 470,
           // height:  300,
            width: MediaQueryHelper.width * double.infinity,
         
         
            child: SignUpForm()
          ),
          Container(
            height: MediaQueryHelper.height * 80,
            width: MediaQueryHelper.width * double.infinity,
            //color: Colors.blue,
            child: footerForSignUpForm(),
          )
        ],
      ),
    );
  }
}
