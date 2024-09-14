import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:docdoc/Core/Widgets/mybutton.dart';
import 'package:docdoc/Core/helpers/extentions.dart';
import 'package:docdoc/Features/onBoarding/ui/widgets/logo_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoadrding extends StatelessWidget {
  const OnBoadrding({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: ColorsApp.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: ColorsApp.white,
      ),
      child: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            bool? exitConfirm = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Exit App'),
                content: const Text('Are you sure you want to exit the app?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text(
                      'No',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            );

            if (exitConfirm ?? false) {
              SystemNavigator.pop();
            }

            return Future.value(false);
          },
          child: Scaffold(
            backgroundColor: ColorsApp.white,
            appBar: AppBar(
              toolbarHeight: 30.h,
              leading: Container(),
              backgroundColor: ColorsApp.white,
              surfaceTintColor: ColorsApp.white,
            ),
            body: ListView(
              children: [
                LogoApp(
                  width_logo: 40.w,
                  width_logo_text: 100.w,
                ),
                SizedBox(
                  height: 45.h,
                ),
                Stack(
                  //alignment: AlignmentDirectional.topCenter,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/Background_onBoarding_screen.svg',
                    ),
                    Container(
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              ColorsApp.white,
                              ColorsApp.white.withOpacity(0.0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: const [0.14, 0.4]),
                      ),
                      child: Image.asset(
                        'assets/images/doctor.png',
                      ),
                    ),
                    Positioned(
                      top: 450.h,
                      left: 100.w,
                      child: Text(
                        'Best Doctor ',
                        textAlign: TextAlign.center,
                        style: TextStyleApp.font32wieght700ColorBlue,
                      ),
                    ),
                    Positioned(
                      top: 488.h,
                      left: 60.w,
                      child: Text(
                        'Appointment App',
                        textAlign: TextAlign.center,
                        style: TextStyleApp.font32wieght700ColorBlue,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text(
                    'Physician Assistant is a specialty of Docdoc',
                    style: TextStyle(
                      color: ColorsApp.grey,
                      fontSize: 12.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 35),
                  child: MyButton(
                    onPressed: () {
                      context.pushNamed('/login');
                    },
                    text: 'Get Started',
                  ),
                ),
                SizedBox(
                  height: 15.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
