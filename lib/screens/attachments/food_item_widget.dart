import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/custom_extensions.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class FoodItemWidget extends StatelessWidget {
  final bool axisHonrizontal;
  const FoodItemWidget({this.axisHonrizontal = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          3.w,
        ),
        border: Border.all(
          color: ColorUtility.primaryColor.withOpacity(
            .5,
          ),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          3.w,
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 1.5.h,
            left: 3.w,
            right: 3.w,
            bottom: axisHonrizontal ? 1.5.h : 0,
          ),
          child: axisHonrizontal == true
              ? Row(
                  children: _itemChildren(
                      context: context, isHonrizontal: axisHonrizontal),
                )
              : Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.s,
                  children: _itemChildren(context: context),
                ),
        ),
      ),
    );
  }

  List<Widget> _itemChildren(
      {required BuildContext context, bool isHonrizontal = false}) {
    final TextAlign textAlign =
        isHonrizontal ? TextAlign.justify : TextAlign.center;
    return <Expanded>[
      Expanded(
        flex: 1,
        child: isHonrizontal
            ? ClipRRect(
                borderRadius: BorderRadius.circular(
                  2.w,
                ),
                child: Image.asset(
                  width: 100.w,
                  AssetImageUtility.foodImage1,
                  fit: BoxFit.cover,
                  height: 12.h,
                ),
              )
            : Image.asset(
                width: 100.w,
                AssetImageUtility.foodImage1,
                fit: BoxFit.cover,
              ),
      ),
      Expanded(
        flex: isHonrizontal == true ? 2 : 1,
        child: Container(
          padding: isHonrizontal
              ? EdgeInsets.only(
                  left: 3.w,
                )
              : null,
          child: Column(
            crossAxisAlignment: isHonrizontal
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RobotoCustomText(
                text: "Primed Asian Food with Salad",
                textAlign: textAlign,
                fontWeight: FontWeight.w700,
                maxLines: 2,
              ),
              RobotoCustomText(
                textAlign: textAlign,
                text: "2,000".appendNairaSymbol(),
                fontWeight: FontWeight.w700,
                textColor: ColorUtility.primaryColor,
                fontSize: 15.dp,
              ),
              RobotoCustomText(
                textAlign: textAlign,
                text: "Solomon Oluwafemi",
                maxLines: 1,
                // textColor: ColorUtility.hexadecimalGrey06,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RobotoCustomText(
                          text: '4.5\t',
                          fontWeight: FontWeight.w500,
                          fontSize: 15.dp,
                        ),
                        Icon(
                          Icons.star,
                          size: 14.dp,
                          color: ColorUtility.hexadecimalYellow,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/food_detail_screen");
                        },
                        style: circleButtonStyle(
                          context: context,
                          padding: const EdgeInsets.all(
                            2,
                          ),
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    ];
  }
}
