import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintext;
  final bool obscureText;
  final TextInputType? keybordType;
  final Widget preffixIcon;
  final Widget? suffixIcon;

  const MyTextField({super.key,required this.controller, required this.hintext, required this.obscureText, this.keybordType, required this.preffixIcon,  this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon:preffixIcon,
          suffixIcon: suffixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey.shade400,
            )),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintext,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
