import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoApp extends StatelessWidget {
  const LogoApp(
      {super.key, required this.width_logo, required this.width_logo_text});
  final double width_logo;
  final double width_logo_text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/logo.svg',
          width: width_logo,
        ),
        SizedBox(
          width: 8.w,
        ),
        SvgPicture.asset(
          'assets/svgs/Docdoc_logo.svg',
          width: width_logo_text,
        ),
      ],
    );
  }
}
