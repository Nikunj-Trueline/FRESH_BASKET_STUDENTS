import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fresh_basket/common/common_sizebox.dart';
import 'package:fresh_basket/utils/utils.dart';
import '../../../common/custom_suffix_icon.dart';
import '../../../mediaquery/mediaqueryhelper.dart';
import '../../../preference/shared_preference.dart';
import '../../../routes/routes_manage.dart';
import 'common_textfield_decoration.dart';
import 'custom_elevated_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String gender = 'male',
      dob = '',
      fName = '',
      lName = '',
      contact = '',
      email = '',
      password = '',
      userType = '',
      address = '';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              buildNameFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildEmailFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildContactFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildGenderSelectionWidget(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildUserTypeFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildDateOfBirthFormField(context),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildAddressFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildPasswordFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              buildConfirmPasswordFormField(),
              commonSizeBox(
                height: MediaQueryHelper.height * 16,
              ),
              //-------------------------
              footerForSignUpForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget footerForSignUpForm() {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
      child: customButtonForSignUp(
          data: "Sign Up",
          onPressed: () {
            // print('''
            // fName : $fName
            // lName : $lName
            // email : $email
            // password : $password
            //            ''');

            String email = _emailController.text.toString().trim();
            String password = _passwordController.text.toString().trim();

            createAccount(email, password, context);

            // PreferenceServices.setData(
            //     key: PreferenceServices.isLoginKey, value: true);
            //
            Navigator.pushNamedAndRemoveUntil(
                context, AppRoutes.homeScreen, (route) => false);
          },
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          letterSpacing: 1),
    );
  }

  buildNameFormField() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TextFormField(
            cursorHeight: 32,
            cursorWidth: 3,
            cursorColor: Colors.amber.shade700,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter First name';
              }
              return null;
            },
            onSaved: (newValue) {
              fName = newValue.toString();
            },
            keyboardType: TextInputType.name,
            decoration: decorationForTextFormField(
              labelText: "First Name",
            ),
          ),
        ),
        SizedBox(
          width: MediaQueryHelper.width * 20,
        ),
        Expanded(
          child: TextFormField(
            cursorHeight: 32,
            cursorWidth: 3,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Last name';
              }
              return null;
            },
            onChanged: (value) {},
            cursorColor: Colors.amber.shade700,
            keyboardType: TextInputType.name,
            decoration: decorationForTextFormField(
              labelText: "Last Name",
            ),
          ),
        )
      ],
    );
  }

  buildEmailFormField() {
    return TextFormField(
      controller: _emailController,
      cursorHeight: 32,
      cursorWidth: 3,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.amber.shade700,
      validator: (value) {
        if (value == null || value.isEmpty || !Utils.isValidEmail(value)) {
          return 'Please enter valid email';
        }
        return null;
      },
      decoration: decorationForTextFormField(
        labelText: "Enter Email",
        suffixIcon: const CustomSuffixIcon(
          svgIconPath: 'assets/icons/email.svg',
        ),
      ),
    );
  }

  buildContactFormField() {
    return TextFormField(
      cursorHeight: 32,
      cursorWidth: 3,
      cursorColor: Colors.amber.shade700,
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value == null || value.isEmpty || !Utils.isContactValid(value)) {
          return 'Please enter valid number';
        }
        return null;
      },
      onChanged: (value) {
        if (kDebugMode) {
          print(value);
        }
      },
      decoration: decorationForTextFormField(
          labelText: "Contact",
          suffixIcon:
              CustomSuffixIcon(svgIconPath: 'assets/icons/phone-call.svg')),
    );
  }

  buildGenderSelectionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          const Text('Gender',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w800)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'male',
                  groupValue: gender,
                  activeColor: Colors.amber,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                const Text('Male',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'female',
                  groupValue: gender,
                  activeColor: Colors.amber,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                const Text('Female',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'other',
                  activeColor: Colors.amber,
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value.toString();
                    });
                  },
                ),
                const Text(
                  'Others',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildUserTypeFormField() {
    return DropdownButtonFormField(
      iconEnabledColor: Colors.black,
      onSaved: (newValue) {},
      decoration: decorationForTextFormField(
        labelText: "User Type",
      ),
      items: const [
        DropdownMenuItem(
          value: 'Vendor',
          child: Text('Vendor',
              style: TextStyle(fontSize: 20, color: Colors.black)),
        ),
        DropdownMenuItem(
          value: 'User',
          child: Text(
            'User',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
      onChanged: (value) {
        print(value);
      },
    );
  }

  buildDateOfBirthFormField(BuildContext context) {
    return TextFormField(
      cursorHeight: 32,
      cursorWidth: 3,
      controller: dobController,
      cursorColor: Colors.amber.shade700,
      onTap: () {
        datePiker();
      },
      onSaved: (newValue) {},
      decoration: decorationForTextFormField(
          labelText: "Date of Birth",
          suffixIcon: InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              datePiker();
            },
            child: CustomSuffixIcon(svgIconPath: 'assets/icons/calendar.svg'),
          )),
    );
  }

  buildAddressFormField() {
    return TextFormField(
      cursorHeight: 32,
      cursorWidth: 3,
      cursorColor: Colors.amber.shade700,
      keyboardType: TextInputType.multiline,
      maxLines: 4,
      onSaved: (newValue) {},
      decoration: decorationForTextFormField(
          labelText: "Address", alignLabelWithHint: true),
    );
  }

  buildPasswordFormField() {
    return TextFormField(
        controller: _passwordController,
        cursorHeight: 32,
        cursorWidth: 3,
        cursorColor: Colors.amber.shade700,
        keyboardType: TextInputType.text,
        obscureText: true,
        validator: (value) {
          if (value == null || value.isEmpty || !Utils.isValidPassword(value)) {
            return 'Please enter valid password';
          }
          return null;
        },
        onSaved: (newValue) {
          password = newValue.toString();
        },
        decoration: decorationForTextFormField(
            labelText: "Password",
            suffixIcon:
                CustomSuffixIcon(svgIconPath: 'assets/icons/lock.svg')));
  }

  buildConfirmPasswordFormField() {
    return TextFormField(
      cursorHeight: 32,
      cursorWidth: 3,
      cursorColor: Colors.amber.shade700,
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: (value) {
        if (value == null || value != password) {
          return 'Please enter valid password';
        }
        return null;
      },
      decoration: decorationForTextFormField(
        labelText: 'Confirm Password',
      ),
    );
  }

  Future<void> datePiker() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      dob =
          "${pickedDate.day.toString()} - ${pickedDate.month.toString()} - ${pickedDate.year.toString()}";
      dobController.text = dob;
    }

    //  01-01-2024
  }

  Future<void> createAccount(
      String email, String password, BuildContext context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (credential.user != null) {
        print("UID : ${credential.user!.uid}");
        print("EMAIL : ${credential.user!.email}");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
