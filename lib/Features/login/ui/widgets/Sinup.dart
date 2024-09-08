import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:docdoc/Core/helpers/extentions.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  String text3;
  String text4;
  SignUp({super.key, required this.text3, required this.text4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text3,
          style: TextStyleApp.font12weight400colorGrey.copyWith(fontSize: 11),
        ),
        GestureDetector(
          onTap: () {
            context.pushNamed('/register');
          },
          child: Text(text4,
              style: TextStyleApp.font12weight400colorGrey
                  .copyWith(color: ColorsApp.blue, fontSize: 11)),
        ),
      ],
    );
  }
}
