import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(const Color(0xff247CFF)),
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 52))),
        onPressed: () {},
        child: Center(
            child: Text(
          "Create Account",
          style: TextStyleApp.styletext(16, Colors.white, FontWeight.bold),
        )));
  }
}
