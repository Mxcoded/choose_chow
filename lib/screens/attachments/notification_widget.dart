import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/models/notification_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NotificationWidget extends StatelessWidget {
  final NotificationVm notificationVm;

  const NotificationWidget({
    required this.notificationVm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            3.w,
          ),
          border: Border.all(
            color: ColorUtility.hexadecimalHueColor,
            width: 0.8,
          )),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          vertical: 0.5.h,
          horizontal: 2.w,
        ),
        titleAlignment: ListTileTitleAlignment.top,
        title: RobotoCustomText(
          text: "Comment",
          fontWeight: FontWeight.w500,
          fontSize: 14.dp,
        ),
        subtitle: RobotoCustomText(
          text:
              "${notificationVm.user}  commented on ${notificationVm.postName}",
          fontWeight: FontWeight.w400,
          fontSize: 12.dp,
        ),
        horizontalTitleGap: 2.w,
        leading: SizedBox(
          width: 15.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 2.h,
                  width: 3.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtility.primaryColor),
                ),
              ),
              Expanded(
                flex: 5,
                child: CircleAvatar(
                  backgroundImage: AssetImage(notificationVm.imageUrl),
                ),
              ),
            ],
          ),
        ),
        trailing: RobotoCustomText(
          text: notificationVm.time,
          fontWeight: FontWeight.w400,
          textColor: ColorUtility.hexadecimalGrey05,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
