import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_app/App/widget/alerd_dialog.dart';
import 'package:shop_app/App/widget/bottom_sheet_sing_up_widget.dart';
import 'package:shop_app/App/widget/textfild_widget.dart';
import 'package:shop_app/project/presentation/NEW%20PASSWORD%20PAGE/new%20_Password_Page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextFieldWidget(
                hinText: 'Enter Your Email',
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: showAlertDialog2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFF785B)),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
            title: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: Color(0xffFF785B),
                      ))
                ],
              ),
            ),
            backgroundColor: Color(0xffFBEDEA),
            elevation: 100,
          );
        });
  }

  void showAlertDialog2() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              TextFieldWidget(
                hinText: 'Verification Code',
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewPasswordPage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFF785B)),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
            title: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  Text(
                    'Verification Code',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            backgroundColor: Color(0xffFBEDEA),
            elevation: 100,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBEDEA),
      // backgroundColor: Color(0xffdf3f1),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            // main logo
            Image.asset(
              'assets/images/logo mock.png',
              height: 227,
              width: 500,
            ),
            // textfields
            TextFieldWidget(
              hinText: 'Email',
              controller: emailController,
            ),
            const SizedBox(
              height: 45,
            ),
            TextFieldWidget(
              hinText: 'Password',
              controller: passwordController,
            ),
            const SizedBox(
              height: 25,
            ),
            // forgot password button
            TextButton(
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                onPressed: showAlertDialog),
            const SizedBox(
              height: 25,
            ),
            // sign in button
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffFF785B)),
              child: const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            // description Sign in with
            const Text(
              'Sign in with',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 55,
            ),
            //login with facebook and google
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/facebook.png'),
                    radius: 15,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/google.png'),
                    radius: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 119,
            ),
            BottomSheetSingUpWidget(),
          ],
        ),
      ),
    );
  }
}
