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
        child: Scaffold(
          backgroundColor: ColorsApp.white,
          appBar: AppBar(
            toolbarHeight: 30.h,
            leading: Container(),
            backgroundColor: ColorsApp.white,
            surfaceTintColor: ColorsApp.white,
          ),
          body: Column(
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
              Text(
                'Physician Assistant is a specialty of Docdoc',
                style: TextStyle(
                  color: ColorsApp.grey,
                  fontSize: 12.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.14,
                ),
              ),
              const Expanded(child: SizedBox()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35),
                child: MyButton(
                  onPressed: () {
                    context.pushNamed('/login');
                  },
                  text: 'Get Started',
                ),
              ),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
