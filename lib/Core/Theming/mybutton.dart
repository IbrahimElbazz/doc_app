import 'package:docdoc/Core/Theming/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff247CFF)),
            minimumSize: MaterialStateProperty.all(Size(double.infinity, 52))),
        onPressed: () {},
        child: Center(
            child: Text(
          "Create Account",
          style: styletext(16, Colors.white, FontWeight.bold),
        )));
  }
}
