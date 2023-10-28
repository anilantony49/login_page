import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final controller;
  final String hintext;
  final bool obscureText;
  final TextInputType? keybordType;
  final Widget preffixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  MyTextField({
    super.key,
    required this.controller,
    required this.hintext,
    required this.obscureText,
    this.keybordType,
    required this.preffixIcon,
    this.suffixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: preffixIcon,
            suffixIcon: suffixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey.shade400,
            )),
            fillColor:  const Color.fromARGB(244, 236, 227, 235),
            filled: true,
            hintText: hintext,
            hintStyle: TextStyle(color: Colors.grey[500])),
        validator: validator,
      ),
    );
  }
}
