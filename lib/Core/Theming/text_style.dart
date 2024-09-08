import 'package:docdoc/Core/Theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleApp {
  static TextStyle styletext(double size, Color color, FontWeight fw) {
    return GoogleFonts.poppins(color: color, fontSize: size.sp, fontWeight: fw);
  }

  static TextStyle font32wieght700ColorBlue = TextStyle(
    fontSize: 32.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    height: 0.05,
    color: ColorsApp.blue,
  );

  static TextStyle Button_Style = TextStyle(
    color: ColorsApp.white,
    fontSize: 16.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static TextStyle font14weight400colorGrey = TextStyle(
    color: ColorsApp.grey,
    fontSize: 14.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
  static TextStyle font12weight400colorGrey = TextStyle(
    color: ColorsApp.grey,
    fontSize: 12.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
}
