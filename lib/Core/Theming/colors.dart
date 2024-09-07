import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorsApp {
  static Color blue = const Color(0xff247CFF);
  static Color grey = const Color(0xFF757575);
  static Color white = const Color(0xffffffff);
}

TextStyle styletext(double size, Color color, FontWeight fw) {
  return GoogleFonts.poppins(color: color, fontSize: size, fontWeight: fw);
}
