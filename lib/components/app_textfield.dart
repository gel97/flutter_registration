import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Icon? myIcon;
  final bool? obscureText;
  final TextEditingController controller;

  const AppTextField({
    required this.hintText,
    this.myIcon,
    required this.obscureText,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: myIcon,
      ),
    );
  }
}
