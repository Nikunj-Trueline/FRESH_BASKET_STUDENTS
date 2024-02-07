import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_basket/common/common_sizebox.dart';
import '../../../common/custom_suffix_icon.dart';
import 'common_textfield_decoration.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: decorationForTextFormField(
                    labelText: "Enter Email",
                    // hintText: "Enter Your Email"
                    suffixIcon: CustomSuffixIcon(
                      svgIconPath: "assets/icons/email.svg",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        commonSizeBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.number,
                  decoration: decorationForTextFormField(
                    alignLabelWithHint: true ,
                    labelText: "Enter Contact",
                    // hintText: "Enter Your Email"
                    suffixIcon: CustomSuffixIcon(
                      svgIconPath: "assets/icons/email.svg",
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
