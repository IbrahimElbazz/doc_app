import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleApp {
  static TextStyle styletext(double size, Color color, FontWeight fw) {
    return GoogleFonts.poppins(color: color, fontSize: size, fontWeight: fw);
  }
}
