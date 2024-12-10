import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.only(bottom: 1.h),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: ColorUtility.primaryColor.withOpacity(0.4),
                    ),
                  ),
                ),
                child: const RobotoCustomText(
                  text: "Ingredients needed for this recipe",
                  textColor: ColorUtility.hexadecimalGrey05,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            )
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        _rowItem(leading: "Eggs", trailing: "5"),
        SizedBox(
          height: 1.h,
        ),
        _rowItem(leading: "Freshly ground black pepper", trailing: "5 tsp"),
        SizedBox(
          height: 1.h,
        ),
        _rowItem(leading: "Water", trailing: "1 Cup"),
      ],
    );
  }

  Widget _rowItem({required String leading, required String trailing}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: RobotoCustomText(
              text: leading,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: RobotoCustomText(
              text: trailing,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      );
}
