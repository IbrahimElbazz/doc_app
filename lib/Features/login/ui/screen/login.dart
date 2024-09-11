import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:docdoc/Core/helpers/extentions.dart';
import 'package:docdoc/Core/helpers/spacing.dart';
import 'package:docdoc/Features/login/ui/widgets/Sinup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../../Core/Widgets/mybutton.dart';
import '../../../../Core/Widgets/mytextfield.dart';
import '../../../registration/ui/screen/register.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    bool isChecked = false;
    return Scaffold(
        backgroundColor: ColorsApp.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenSize.height * .13,
              horizontal: screenSize.height * .03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyleApp.font32wieght700ColorBlue,
                ),
                verticalSpace(20),
                Text(
                  '''We"re excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.''',
                  style: TextStyleApp.font14weight400colorGrey,
                ),
                SizedBox(
                  height: screenSize.height * .04,
                ),
                const MyTextField(
                  hint: 'Email',
                  showtext: false,
                  icon: Icons.email_outlined,
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                const MyTextField(
                    showtext: true,
                    hint: "Password",
                    icon: Icons.visibility_off),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (_) {},
                        ),
                        Text('Remember me',
                            style: TextStyleApp.font12weight400colorGrey),
                      ],
                    ),
                    Text('Forget Password?',
                        style: TextStyleApp.font12weight400colorGrey
                            .copyWith(color: ColorsApp.blue)),
                  ],
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                MyButton(
                  onPressed: () {
                    context.pushNamed('/main');
                  },
                  text: 'Login',
                ),
                SizedBox(
                  height: screenSize.height * .05,
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
                SizedBox(
                  height: screenSize.height * .04,
                ),
                const SignInWith(),
                SizedBox(
                  height: screenSize.height * .04,
                ),
                const TermsAndConditions(),
                SizedBox(
                  height: screenSize.height * .04,
                ),
                SignUp(
                  text3: "Don't Have any Account? ",
                  text4: "Create Account",
                ),
              ],
            ),
          ),
        ));
  }
}
