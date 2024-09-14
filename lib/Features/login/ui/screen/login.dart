import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/text_style.dart';

import 'package:docdoc/Core/helpers/spacing.dart';
import 'package:docdoc/Features/login/data/models/request_login.dart';
import 'package:docdoc/Features/login/logic/cubit/login_cubit.dart';

import 'package:docdoc/Features/login/ui/widgets/pass_and_email_login.dart';
import 'package:docdoc/Features/login/ui/widgets/loginBlocListener.dart';
import 'package:docdoc/Features/login/ui/widgets/lowerDesignLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Widgets/mybutton.dart';

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
                const EmailAndPass(),
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
                    // context.pushNamed('/main');
                    validateThenDoLogin(context);
                  },
                  text: 'Login',
                ),
                SizedBox(
                  height: screenSize.height * .05,
                ),
                const lowerDesignLogin(),
                const loginBlocListener(),
              ],
            ),
          ),
        ));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
