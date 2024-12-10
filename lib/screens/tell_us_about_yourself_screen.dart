import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/custom_text_formfield.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';

import '../Utilities/asset_image_utility.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'background_image_widget.dart';

class TellUsABoutYourSelfScreen extends StatefulWidget {
  const TellUsABoutYourSelfScreen({super.key});

  @override
  State<TellUsABoutYourSelfScreen> createState() =>
      _TellUsABoutYourSelfScreenState();
}

class _TellUsABoutYourSelfScreenState extends State<TellUsABoutYourSelfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              padding: const WidgetStatePropertyAll(
                EdgeInsets.zero,
              ),
            ),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/allow_notification_screen",
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
            horizontal: 8.w,
          ),
          child: const RobotoCustomText(
            text: "Next",
            textColor: Colors.white,
          ),
        ),
      ),
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
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: SpaceGroteskCustomText(
                      text: "Tell us about yourself",
                      fontWeight: FontWeight.w700,
                      fontSize: 30.dp,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorUtility.hexadecimalGrey03,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorUtility.hexadecimalGrayColor,
                          )),
                      padding: EdgeInsets.all(
                        5.w,
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              const CustomTextFormField(
                labelText: "Username",
                textInputAction: TextInputAction.next,
              ),
              SizedBox(
                height: 2.h,
              ),
              const CustomTextFormField(
                labelText: "Phone Number",
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
