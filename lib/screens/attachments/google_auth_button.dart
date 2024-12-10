import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Utilities/color_utility.dart';
import '../../Utilities/icon_images_utility.dart';
import 'roboto_custom_text.dart';

class GoogleAuthButton extends StatelessWidget {
  final bool isSignIn;
  const GoogleAuthButton({this.isSignIn = true, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 3.w,
        ),
        shadowColor: ColorUtility.hexadecimalGrayColor,
        surfaceTintColor: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            IconImageUtility.googleIcon,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 5.w,
            ),
            child: RobotoCustomText(
              text: isSignIn ? "Sign in with Google" : "Sign up with Google",
              fontWeight: FontWeight.w400,
              fontSize: 14.dp,
            ),
          )
        ],
      ),
    );
  }
}
