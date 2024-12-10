import 'package:choose_chow/screens/attachments/custom_text_formfield.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';
import '../Utilities/asset_image_utility.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'background_image_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
                height: 4.h,
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
                text: "Forgot Password",
                fontWeight: FontWeight.w700,
                fontSize: 30.dp,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              RobotoCustomText(
                text: "Enter your email to recover your password",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 7.h,
              ),
              const CustomTextFormField(
                labelText: "Email Address",
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 4.h,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/otp_verification_screen')
                      .then((value) {
                    if (value == true) {
                      Navigator.pushNamed(
                        context,
                        '/password_reset_input_screen',
                      );
                    }
                  });
                },
                child: RobotoCustomText(
                  text: "Reset Password",
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
