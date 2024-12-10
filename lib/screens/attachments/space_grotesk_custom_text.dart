import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpaceGroteskCustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final GoogleFonts? googleFonts;
  final int? maxLines;
  const SpaceGroteskCustomText(
      {required this.text,
      this.fontSize,
      this.textAlign,
      this.textColor,
      this.fontWeight,
      this.maxLines,
      this.googleFonts,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      maxLines: maxLines,
      style: GoogleFonts.spaceGrotesk(
          fontSize: fontSize,
          color: textColor ?? Colors.black,
          fontWeight: fontWeight),
      textAlign: textAlign,
      softWrap: true,
    );
  }
}
