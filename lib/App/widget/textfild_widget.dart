import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, this.controller, this.hinText});
  TextEditingController? controller;
  String? hinText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hinText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffFF785B), width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffffffff), width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffFF785B), width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
