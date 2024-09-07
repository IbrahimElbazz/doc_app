import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/mybutton.dart';
import 'package:docdoc/Core/Theming/mytextfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 100),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              "Create Account",
              style: styletext(30, const Color(0xff247CFF), FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign up now and start exploring all that our\napp has to offer. We're excited to welcome\nyou to our community!",
              style: styletext(15, Colors.grey[700]!, FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(
              boool: false,
              hint: 'Email',
            ),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(boool: true, hint: "Password"),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(
              boool: false,
              hint: "Your Number",
              icon: Icons.arrow_drop_down,
            ),
            const SizedBox(
              height: 30,
            ),
            const MyButton(),
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 3,
                  indent: 70,
                  endIndent: 40,
                ),
                Text(
                  "Or signin with ",
                  style: TextStyle(fontSize: 12, color: Color(0xff9E9E9E)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
