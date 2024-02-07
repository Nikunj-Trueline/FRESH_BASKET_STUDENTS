import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';
import 'package:fresh_basket/routes/routes_manage.dart';

import '../../../common/common_sizebox.dart';
import 'common_textfield_signin.dart';
import 'custom_buttons.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              commonSizeBox(height: MediaQueryHelper.height * 30),
              SizedBox(
                height: MediaQueryHelper.height * 230,
                width: MediaQueryHelper.width * 470,
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/sign_in_image.jpg"),
                ),
              ),
              commonSizeBox(height: MediaQueryHelper.height * 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sign In',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ],
              ),
              commonSizeBox(height: MediaQueryHelper.height * 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your email and password",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
              commonSizeBox(height: MediaQueryHelper.height * 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Email",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                ],
              ),
              commonTextFieldForSignInField(
                status: false,
                controller: _emailController,
                iconForSuffix: Icons.email,
                onTap: () {},
              ),
              commonSizeBox(height: MediaQueryHelper.height * 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Password",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                ],
              ),
              commonTextFieldForSignInField(
                status: status,
                controller: _passwordController,
                iconForSuffix:
                    status == true ? Icons.visibility : Icons.visibility_off,
                onTap: () {
                  setState(() {
                    status = !status;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customTextButtonForForgot(
                    onPressed: () {},
                    data: "Forgot Password?",
                    fontSize: 20,
                  )
                ],
              ),
              commonSizeBox(
                height: MediaQueryHelper.height * 40,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  customButtonForSignIn(
                      onPressed: () {
                        if (kDebugMode) {
                          print(_emailController.text.toString());
                          print(_passwordController.text.toString());
                        }
                      },
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      text: 'Sign In'),
                ],
              ),
              commonSizeBox(
                height: MediaQueryHelper.height * 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  const Text("Don't have an account? ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),
                  customTextButtonForSignUp(
                      data: "Sign Up",
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.signUpScreen);
                      },
                      color: Colors.amber,
                      fontSize: 24)
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
