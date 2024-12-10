import 'package:flutter/material.dart';

import '../../Utilities/color_utility.dart';
import 'roboto_custom_text.dart';

class TextBetweenDividersWidget extends StatelessWidget {
  final double _alternateSignInDividerOpacity = .5;
  final String text;
  const TextBetweenDividersWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: ColorUtility.hexadecimalGrayColor.withOpacity(
              _alternateSignInDividerOpacity,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: RobotoCustomText(
            text: text,
            textColor: ColorUtility.hexadecimalGrayColor,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorUtility.hexadecimalGrayColor.withOpacity(
              _alternateSignInDividerOpacity,
            ),
          ),
        ),
      ],
    );
  }
}
