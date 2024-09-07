import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:docdoc/Core/Widgets/mybutton.dart';
import 'package:docdoc/Core/Widgets/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text(
              "Create Account",
              style: TextStyleApp.styletext(
                  30, const Color(0xff247CFF), FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign up now and start exploring all that our",
              style: TextStyleApp.styletext(
                  14, Colors.grey[700]!, FontWeight.normal),
            ),
            Text(
              "app has to offer. We're excited to welcome\nyou to our community!",
              style: TextStyleApp.styletext(
                  14, Colors.grey[700]!, FontWeight.normal),
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
            IntlPhoneField(
                decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  )),
              hintText: "Your number",
              hintStyle:
                  TextStyleApp.styletext(15, Colors.grey, FontWeight.normal),
              fillColor: const Color(0xffFDFDFF),
            )),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              onPressed: () {},
              text: 'Create Account',
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color(0xffe0e0e0),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or sign in with',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xffe0e0e0),
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xfff5f5f5),
                  radius: 30,
                  child: SvgPicture.asset("assets/svgs/googlelogo.svg"),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xfff5f5f5),
                  radius: 30,
                  child: SvgPicture.asset("assets/svgs/facebook.svg"),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xfff5f5f5),
                  radius: 30,
                  child: SvgPicture.asset("assets/svgs/apple.svg"),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By loggoing. you agree to our ",
                  style: TextStyle(color: Color(0xff9e9e9e), fontSize: 11),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Terms & Conditions",
                    style: TextStyle(
                      color: Color(0xff242424),
                      fontSize: 13,
                    ),
                  ),
                ),
                const Text(
                  " and",
                  style: TextStyle(color: Color(0xff9e9e9e), fontSize: 11),
                ),
              ],
            ),
            Center(
                child: GestureDetector(
              onTap: () {},
              child: const Text("PrivacyPolicy",
                  style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 14,
                  )),
            )),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an Account. ",
                  style: TextStyle(color: Color(0xff242424), fontSize: 13),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "SignIn",
                    style: TextStyle(
                      color: Color(0xff247cFF),
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
