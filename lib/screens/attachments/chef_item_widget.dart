import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ChefItemWidget extends StatelessWidget {
  final TextAlign _textAlign = TextAlign.justify;
  const ChefItemWidget({super.key});

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
              bottom: 1.5.h,
            ),
            child: Row(children: <Expanded>[
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 12.w,

                  // borderRadius: BorderRadius.circular(
                  //   100.w,
                  // ),
                  backgroundImage: const AssetImage(
                    AssetImageUtility.sampleUserImg,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RobotoCustomText(
                      text: "Chef Chi",
                      textAlign: _textAlign,
                      fontWeight: FontWeight.w700,
                      maxLines: 2,
                      fontSize: 16.dp,
                    ),
                    RobotoCustomText(
                      textAlign: _textAlign,
                      text: "Chicken Republic",
                      maxLines: 1,
                      textColor: ColorUtility.hexadecimalGrey06,
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
                                color: ColorUtility.primaryColor,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              onPressed: () {
                                _gotoChefDetailScreen(context: context);
                              },
                              style: circleButtonStyle(
                                context: context,
                                padding: const EdgeInsets.all(
                                  2,
                                ),
                              ),
                              child: const Icon(Icons.view_list),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }

  void _gotoChefDetailScreen({required BuildContext context}) =>
      Navigator.pushNamed(context, "/chef_detail_screen");
}
