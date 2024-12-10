import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class RatingGraphWidget extends StatelessWidget {
  const RatingGraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          _ratingItem(rating: 5, totalRating: 10, numbersOfRating: 4),
          _ratingItem(rating: 4, totalRating: 10, numbersOfRating: 2),
          _ratingItem(rating: 3, totalRating: 10, numbersOfRating: 3),
          _ratingItem(rating: 2, totalRating: 10, numbersOfRating: 1),
          _ratingItem(rating: 1, totalRating: 10, numbersOfRating: 0),
        ],
      ),
    );
  }

  Widget _ratingItem(
      {required int rating,
      required double numbersOfRating,
      required double totalRating}) {
    final double widthPercentage = numbersOfRating * totalRating / 100 * 100.w;
    return Container(
      margin: EdgeInsets.only(
        bottom: 1.h,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: RobotoCustomText(
              text: "$rating STAR",
              fontWeight: FontWeight.w500,
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              height: 2.h,
              width: widthPercentage,
              decoration: BoxDecoration(
                color: ColorUtility.primaryColor,
                borderRadius: BorderRadius.circular(
                  2.w,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
