import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CollectionWidget extends StatelessWidget {
  final String imageUrl;
  final String collectionName;
  final bool isActive;
  const CollectionWidget({
    required this.collectionName,
    required this.imageUrl,
    this.isActive = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Flexible(
          flex: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              7.w,
            ),
            child: Container(
              height: 10.h,
              width: 18.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: RobotoCustomText(
            text: collectionName,
            textColor:
                isActive ? Colors.black : ColorUtility.hexadecimalGrayColor,
            fontSize: 12.dp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Flexible(
          flex: 1,
          child: isActive
              ? Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: ColorUtility.primaryColor, shape: BoxShape.circle),
                )
              : Container(),
        )
      ],
    );
  }
}
