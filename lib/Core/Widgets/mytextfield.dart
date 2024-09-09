import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.showtext,
    required this.hint,
    required this.icon,
  });
  final bool? showtext;
  final String? hint;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: showtext!,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorsApp.blue,
              )),
          hintText: hint,
          hintStyle: TextStyleApp.styletext(15, Colors.grey, FontWeight.normal),
          suffixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          fillColor: const Color(0xffFDFDFF),
        ));
  }
}
