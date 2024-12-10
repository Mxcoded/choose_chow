import 'dart:async';

import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'attachments/roboto_custom_text.dart';
import 'background_image_widget.dart';

class ResetPasswordSuccessScreen extends StatefulWidget {
  final bool? isAuthArea;
  const ResetPasswordSuccessScreen({this.isAuthArea, super.key});

  @override
  State<ResetPasswordSuccessScreen> createState() =>
      _ResetPasswordSuccessScreenState();
}

class _ResetPasswordSuccessScreenState
    extends State<ResetPasswordSuccessScreen> {
  @override
  void initState() {
    _performWaitAndPop();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BackgroundImageWidget(
        child: HorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              SpaceGroteskCustomText(
                text: "Reset your Password",
                fontWeight: FontWeight.w700,
                fontSize: 25.dp,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.h,
              ),
              RobotoCustomText(
                text: "Reset Password Success ! \nYou'll be redirected",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Image.asset(
                AssetImageUtility.cookingAtHomeWithCat,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _performWaitAndPop() {
    Timer(
        const Duration(
          seconds: 2,
        ), () {
      if (widget.isAuthArea == true) {
        Navigator.pop(context);
      } else {
        Navigator.pop(context);
        Navigator.pop(context);
      }
    });
  }
}
