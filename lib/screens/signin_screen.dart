import 'package:choose_chow/Utilities/color_utility.dart';
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

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImageWidget(
        child: HorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 8.h,
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
                text: "Welcome!",
                fontWeight: FontWeight.w700,
                fontSize: 30.dp,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              RobotoCustomText(
                text: "Please Login with your account to continue",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.h,
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
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, '/reset_password_screen'),
                child: const RobotoCustomText(
                  text: "Forgot Password?",
                  textColor: ColorUtility.hexadecimalGrayColor,
                  textAlign: TextAlign.right,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                onPressed: _signIn,
                child: RobotoCustomText(
                  text: "Sign In",
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const TextBetweenDividersWidget(text: "Or sign in with"),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: const GoogleAuthButton(),
              ),
              SizedBox(
                height: 7.h,
              ),
              const AlreadyHaveAnAccountOrNoAccountWidget()
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() {
    Navigator.pushReplacementNamed(
      context,
      "/auth_homepage",
    );
  }
}
