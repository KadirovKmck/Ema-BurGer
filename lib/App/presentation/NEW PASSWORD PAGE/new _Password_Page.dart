import 'package:flutter/material.dart';
import 'package:shop_app/App/widget/textfild_widget.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({Key? key}) : super(key: key);

  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBEDEA),
        // backgroundColor: Color(0xffdf3f1),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(children: [
            // main logo
            Image.asset(
              'assets/images/logo mock.png',
              height: 227,
              width: 500,
            ),
            Text(
              "Your password must be at-least 8 characters long.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(
              height: 45,
            ),
            // textfields
            TextFieldWidget(
              hinText: 'Enter your new Password',
              controller: emailController,
            ),
            const SizedBox(
              height: 45,
            ),
            TextFieldWidget(
              hinText: 'Reconfirm new password',
              controller: passwordController,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffFF785B)),
              child: const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ]),
        ));
  }
}
