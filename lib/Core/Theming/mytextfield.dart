import 'package:docdoc/Core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.boool,
    required this.hint,
    this.icon,
  });
  final bool? boool;
  final String? hint;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: boool!,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.grey,
              )),
          hintText: hint,
          hintStyle: styletext(20, Colors.grey, FontWeight.normal),
          suffixIcon: Icon(
            icon,
            color: Colors.grey[800],
          ),
          fillColor: const Color(0xffFDFDFF),
        ));
  }
}
