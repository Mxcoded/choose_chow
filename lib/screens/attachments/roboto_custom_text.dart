import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RobotoCustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final GoogleFonts? googleFonts;
  final int? maxLines;
  final FontStyle? fontStyle;

  const RobotoCustomText(
      {required this.text,
      this.fontSize,
      this.textAlign,
      this.textColor,
      this.fontWeight,
      this.maxLines,
      this.googleFonts,
      this.fontStyle,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
        color: textColor ?? Colors.black,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
      textAlign: textAlign,
      softWrap: true,
    );
  }
}
