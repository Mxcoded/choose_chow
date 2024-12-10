import 'dart:math';

import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/notification_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../models/notification_vm.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  late int _randomNumber;
  final List<NotificationVm> _notificationsVms = <NotificationVm>[
    NotificationVm(
        user: "Solomon Oluwafemi",
        imageUrl: AssetImageUtility.collectionImage1,
        time: "Just now",
        postName: "How to Prepare Ogbono soup"),
    NotificationVm(
        user: "Makanjuola Oluwaseyi",
        imageUrl: AssetImageUtility.sampleUserImg,
        time: "22h",
        postName: "Recipe for Egusi soup"),
    NotificationVm(
        user: "Makanjuola Oluwaseyi",
        imageUrl: AssetImageUtility.choppingBoardWithFood,
        time: "Yesterday",
        postName: "Recipe for Banga soup with Pounded Yam"),
  ];
  @override
  void initState() {
    _randomNumber = Random().nextInt(2);
    // _randomNumber = 0;
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: SpaceGroteskCustomText(
          text: "Notifications",
          fontSize: 24.dp,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: _randomNumber == 0
              ? ListView(
                  children: [
                        const RobotoCustomText(
                          text:
                              "Here are your notifications from the last 7 days",
                          textColor: ColorUtility.hexadecimalGrey05,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ] +
                      _notificationsVms
                          .map(
                            (e) => InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, "/comments_screen"),
                              child: Container(
                                margin: EdgeInsets.only(
                                  bottom: 1.h,
                                ),
                                child: NotificationWidget(
                                  notificationVm: e,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetImageUtility.breakfastCooking1,
                    ),
                    // SizedBox(
                    //   height: 1.h,
                    // ),
                    SpaceGroteskCustomText(
                      text: "No Notifications Yet",
                      fontSize: 24.dp,
                      fontWeight: FontWeight.w700,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
