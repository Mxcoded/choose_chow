import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class OrderHistoryItem extends StatelessWidget {
  final bool showFullDetails;
  const OrderHistoryItem({this.showFullDetails = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 1.h,
        horizontal: 2.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorUtility.primaryColor.withOpacity(.5),
        ),
        borderRadius: BorderRadius.circular(
          2.w,
        ),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Flexible>[
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                2.w,
              ),
              child: Image.asset(
                height: 10.h,
                AssetImageUtility.foodImage1,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                children: [
                  const RobotoCustomText(
                    text: "Prime Pancake with Maple Syrup",
                    maxLines: 1,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  showFullDetails
                      ? Container(
                          margin: EdgeInsets.only(
                            bottom: 1.h,
                          ),
                          child: const RobotoCustomText(
                              text:
                                  "This contains baking flour, salted butter, self-rising yeast."),
                        )
                      : Container(),
                  Container(
                    // width: 10.w,
                    padding: EdgeInsets.symmetric(
                      vertical: .5.h,
                      horizontal: 2.w,
                    ),
                    color: ColorUtility.primaryColor,
                    child: const RobotoCustomText(
                      text: "DELIVERED",
                      textColor: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RobotoCustomText(
                        text: "On 23rd Sept. 2023",
                        fontSize: 10.dp,
                        fontWeight: FontWeight.w700,
                      ),
                      showFullDetails
                          ? Container()
                          : InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, "/order_history_detail"),
                              child: RobotoCustomText(
                                text: "SEE DETAILS",
                                fontSize: 10.dp,
                                textColor: ColorUtility.primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
