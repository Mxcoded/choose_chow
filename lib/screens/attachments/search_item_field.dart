import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utilities/color_utility.dart';

class SearchItemField extends StatefulWidget {
  final String placeHolderText;
  final String screenToPopUp;
  final bool showTrailingSlider;
  final Color? borderColor;
  const SearchItemField({
    required this.screenToPopUp,
    required this.placeHolderText,
    this.showTrailingSlider = true,
    this.borderColor,
    super.key,
  });

  @override
  State<SearchItemField> createState() => _SearchItemFieldState();
}

class _SearchItemFieldState extends State<SearchItemField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: widget.placeHolderText,
        hintStyle: GoogleFonts.roboto(),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(
          Icons.search,
        ),
        suffixIcon: widget.showTrailingSlider
            ? const Icon(
                FontAwesomeIcons.sliders,
                color: ColorUtility.hexadecimalGrayColor,
              )
            : Container(
                width: 0,
              ),
        border: const OutlineInputBorder(),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? ColorUtility.hexadecimalGrey03,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? ColorUtility.hexadecimalGrey03,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? ColorUtility.primaryColor,
            width: widget.borderColor != null ? .5 : 0.2,
          ),
        ),
      ),
      onTap: () => Navigator.pushNamed(
        context,
        widget.screenToPopUp,
      ),
    );
  }
}
