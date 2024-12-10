import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';

import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:permission_handler/permission_handler.dart';
import '../Utilities/asset_image_utility.dart';
import 'attachments/horizontal_padding_widget.dart';
import 'package:flutter/material.dart';

import 'background_image_widget.dart';

class AllowNotificationScreen extends StatefulWidget {
  const AllowNotificationScreen({super.key});

  @override
  State<AllowNotificationScreen> createState() =>
      _AllowNotificationScreenState();
}

class _AllowNotificationScreenState extends State<AllowNotificationScreen> {
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
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 5.w,
            ),
            child: InkWell(
              onTap: () {},
              child: const RobotoCustomText(
                text: "Skip",
                textColor: ColorUtility.primaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
      body: BackgroundImageWidget(
        child: HorizontalPaddingWidget(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 4.h,
              ),
              SpaceGroteskCustomText(
                text: "Turn on \nnotifications",
                fontWeight: FontWeight.w700,
                fontSize: 30.dp,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              RobotoCustomText(
                text:
                    "Allow ChooseChow to send you notifications about recipes, new content, and more.",
                fontSize: 15.dp,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 4.h,
              ),
              Image.asset(
                AssetImageUtility.notificationSampleImage,
              ),
              SizedBox(
                height: 25.h,
              ),
              ElevatedButton(
                onPressed: () async {
                  await Permission.notification.request();
                  // print(notificationStatus);
                },
                child: RobotoCustomText(
                  text: "Allow Notifications",
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
