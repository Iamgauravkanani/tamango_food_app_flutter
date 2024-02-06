import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle welcome_style({
  double fontsize = 16,
  FontWeight fontWeight = FontWeight.w600,
  Color color = Colors.black,
}) {
  return GoogleFonts.poppins(
    fontWeight: fontWeight,
    color: color,
    fontSize: fontsize,
  );
}
