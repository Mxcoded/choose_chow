import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/circular_checkbox.dart';
import 'package:choose_chow/screens/attachments/text_between_dividers.dart';
import 'package:choose_chow/screens/attachments/custom_text_formfield.dart';
import 'package:choose_chow/screens/attachments/google_auth_button.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Utilities/asset_image_utility.dart';
import 'attachments/already_have_account_or_no_account_widget.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'background_image_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageWidget(
        child: HorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Image.asset(
                  AssetImageUtility.logoHorizontal,
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              SpaceGroteskCustomText(
                text: "Sign Up",
                fontWeight: FontWeight.w700,
                fontSize: 30.dp,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              RobotoCustomText(
                text: "Please register now to get started",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.h,
              ),
              const CustomTextFormField(
                labelText: "Full Name",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTextFormField(
                labelText: "Email Address",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 2.h,
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
                height: 2.h,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CircularCheckBox(
                      onChange: (value) {},
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Container(
                      margin: EdgeInsets.only(left: 3.w),
                      child: const Row(
                        children: [
                          RobotoCustomText(text: "I agree with "),
                          InkWell(
                            child: RobotoCustomText(
                              text: "Terms",
                              textColor: ColorUtility.primaryColor,
                            ),
                          ),
                          RobotoCustomText(text: " and "),
                          InkWell(
                            child: RobotoCustomText(
                              text: "Privacy",
                              textColor: ColorUtility.primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/otp_verification_screen").then(
                    (value) {
                      if (value == true) {
                        Navigator.pushReplacementNamed(
                          context,
                          "/tell_us_about_yourself_screen",
                        );
                      }
                    },
                  );
                },
                child: RobotoCustomText(
                  text: "Sign Up",
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              const TextBetweenDividersWidget(text: "Or sign up with"),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: const GoogleAuthButton(
                  isSignIn: false,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const AlreadyHaveAnAccountOrNoAccountWidget(
                isForDontHaveAccount: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
