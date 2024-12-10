import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../Utilities/asset_image_utility.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'background_image_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
                text: "Check your Mail",
                fontWeight: FontWeight.w700,
                fontSize: 30.dp,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              RobotoCustomText(
                text: "We've sent the code to your mail",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 4.h,
              ),
              Pinput(
                onCompleted: (pin) => {},
                defaultPinTheme: PinTheme(
                  width: 100.w,
                  height: 9.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 1.w,
                  ),
                  textStyle: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: ColorUtility.hexadecimalGrayColor,
                      width: 0.4,
                    ),
                    borderRadius: BorderRadius.circular(
                      2.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              ElevatedButton(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      surfaceTintColor: const WidgetStatePropertyAll(
                        Colors.white,
                      ),
                      backgroundColor: const WidgetStatePropertyAll(
                        Colors.white,
                      ),
                      foregroundColor: const WidgetStatePropertyAll(
                        Colors.black,
                      ),
                    ),
                child: RobotoCustomText(
                  text: "Resend Code",
                  fontWeight: FontWeight.w400,
                  textColor: ColorUtility.hexadecimalGrayColor,
                  fontSize: 16.dp,
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(
                  context,
                  true,
                ),
                child: RobotoCustomText(
                  text: "Verify",
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
