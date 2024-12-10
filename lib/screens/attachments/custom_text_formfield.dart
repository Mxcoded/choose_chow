import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Utilities/color_utility.dart';
import 'roboto_custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool? obscureText;
  const CustomTextFormField({
    required this.labelText,
    this.suffixIcon,
    this.controller,
    this.textInputAction,
    this.textInputType,
    this.obscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: ColorUtility.hexadecimalHueColor, width: 0.5),
          borderRadius: BorderRadius.circular(
            2.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorUtility.primaryColor, width: 0.5),
          borderRadius: BorderRadius.circular(
            2.w,
          ),
        ),
        label: RobotoCustomText(
          text: labelText,
          textColor: ColorUtility.hexadecimalGrayColor,
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: suffixIcon,
      ),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      controller: controller,
    );
  }
}
