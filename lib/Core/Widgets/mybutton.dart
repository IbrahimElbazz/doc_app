import 'package:docdoc/Core/Theming/colors.dart';
import 'package:docdoc/Core/Theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 300.w,
        height: 52.h,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: ShapeDecoration(
          color: ColorsApp.blue,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: ColorsApp.blue),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyleApp.Button_Style,
          ),
        ),
      ),
    );
    //  ElevatedButton(
    //   style: ButtonStyle(
    //       backgroundColor: WidgetStateProperty.all(ColorsApp.blue),
    //       minimumSize:
    //           WidgetStateProperty.all(const Size(double.infinity, 52))),
    //   onPressed: onPressed,
    //   child: Center(
    //     child: Text(
    //       text,
    //       style: TextStyleApp.styletext(16, Colors.white, FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
