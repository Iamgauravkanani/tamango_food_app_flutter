import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//todo:border of textfield
underlineborder() => const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    );
SizedBox mysizedbox({double h = 20}) => SizedBox(height: h);

TextStyle mytextstyle() => app_textstyle(
      fontWeight: FontWeight.w300,
      fontsize: 12,
    );

TextStyle textStyle = const TextStyle(
  color: Colors.grey,
);

TextStyle app_textstyle({
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
