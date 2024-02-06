import 'package:flutter/material.dart';
import 'package:fresh_basket/mediaquery/mediaqueryhelper.dart';

import '../../../common/common_sizebox.dart';
import 'common_textfield_signin.dart';

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
              Image(
                image: const AssetImage("assets/images/sign_in_image.jpg"),
                height: MediaQueryHelper.height * 300,
                width: MediaQueryHelper.width * 250,
              ),
              commonSizeBox(height: MediaQueryHelper.height * 30),
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
              commonSizeBox(height: MediaQueryHelper.height * 30),
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
              commonSizeBox(height: MediaQueryHelper.height * 10),
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
              ElevatedButton(onPressed: () {
                print("Email ----->  ${_emailController.text}");
                print("Password ------>  ${_passwordController.text}");
              }, child: const Text("Sign in "))
            ],
          ),
        ),
      )),
    );
  }
}
