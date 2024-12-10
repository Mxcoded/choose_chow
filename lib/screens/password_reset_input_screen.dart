import 'package:choose_chow/screens/attachments/circular_container.dart';
import 'package:choose_chow/screens/attachments/custom_text_formfield.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utilities/color_utility.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'background_image_widget.dart';

class PasswordResetInputScreen extends StatefulWidget {
  final bool? isAuthArea;
  const PasswordResetInputScreen({this.isAuthArea, super.key});

  @override
  State<PasswordResetInputScreen> createState() =>
      _PasswordResetInputScreenState();
}

class _PasswordResetInputScreenState extends State<PasswordResetInputScreen> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(
            context,
          ),
          child: Icon(
            Icons.navigate_before,
            size: 25.dp,
          ),
        ),
      ),
      body: BackgroundImageWidget(
        child: HorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10.h,
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
                height: 1.5.h,
              ),
              RobotoCustomText(
                text: "Please enter your new password",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 7.h,
              ),
              CustomTextFormField(
                obscureText: _obscurePassword,
                labelText: "Password",
                textInputAction: TextInputAction.done,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(
                    right: 10.w,
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    child: Icon(
                      _obscurePassword
                          ? FontAwesomeIcons.eyeSlash
                          : FontAwesomeIcons.eye,
                      color: ColorUtility.hexadecimalGrayColor,
                      size: 15.dp,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                children: [
                  CircularContainer(
                    child: Icon(
                      Icons.check,
                      size: 17.dp,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 2.w,
                    ),
                    child: RobotoCustomText(
                      text: "Your password must contain:",
                      fontWeight: FontWeight.w400,
                      fontSize: 16.dp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const CircularContainer(
                    borderColor: Colors.red,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 3.5.w,
                    ),
                    child: RobotoCustomText(
                      text: "At least 6 characters",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.dp,
                      textColor: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  CircularContainer(
                    borderColor: Colors.white,
                    backgroundColor: ColorUtility.hexadecimalLighterGreenColor,
                    child: Icon(
                      Icons.check,
                      size: 13.dp,
                      color: ColorUtility.hexadecimalLightGreenColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 3.5.w,
                    ),
                    child: RobotoCustomText(
                      text: "Contains a number",
                      fontWeight: FontWeight.w400,
                      fontSize: 14.dp,
                      textColor: ColorUtility.hexadecimalLightGreenColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/reset_password_success_screen',
                      arguments: widget.isAuthArea);
                },
                child: RobotoCustomText(
                  text: "Done",
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
