import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../Utilities/color_utility.dart';

class AlreadyHaveAnAccountOrNoAccountWidget extends StatelessWidget {
  final bool isForDontHaveAccount;
  const AlreadyHaveAnAccountOrNoAccountWidget(
      {this.isForDontHaveAccount = true, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RobotoCustomText(
          text: isForDontHaveAccount
              ? "Don't have an account? "
              : "Already have an account? ",
          fontWeight: FontWeight.w400,
          fontSize: 14.dp,
        ),
        InkWell(
          onTap: () {
            if (isForDontHaveAccount) {
              Navigator.pushReplacementNamed(context, "/signup_screen");
            } else {
              Navigator.pushReplacementNamed(context, "/signin_screen");
            }
          },
          child: RobotoCustomText(
            text: isForDontHaveAccount ? "Sign Up" : "Sign In",
            fontWeight: FontWeight.w400,
            fontSize: 14.dp,
            textColor: ColorUtility.primaryColor,
          ),
        )
      ],
    );
  }
}
