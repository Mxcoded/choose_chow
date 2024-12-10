import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecipeItemWidget extends StatelessWidget {
  final double averageRating;
  final String imageUrl;
  final String recipeName;
  final String collection;
  const RecipeItemWidget({
    required this.averageRating,
    required this.imageUrl,
    required this.collection,
    required this.recipeName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        top: 0,
        bottom: 1.h,
      ),
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(
              2.w,
            )),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 3.w,
              ),
              height: 25.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: ColorUtility.primaryColor,
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(5.w),
                            right: Radius.circular(
                              5.w,
                            ),
                          )),
                      width: 15.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 15.dp,
                          ),
                          RobotoCustomText(
                            text: "$averageRating",
                            textColor: Colors.white,
                            fontSize: 14.dp,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(
                        2.w,
                      ),
                      surfaceTintColor: Colors.white,
                      child: Container(
                          margin: const EdgeInsets.all(
                            7.0,
                          ),
                          child: Icon(
                            FontAwesomeIcons.bookmark,
                            size: 15.dp,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            trailing: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  color: ColorUtility.hexadecimalHueColor,
                  shape: BoxShape.circle),
              child: const Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
              ),
            ),
            title: RobotoCustomText(
              text: recipeName,
              fontSize: 16.dp,
              fontWeight: FontWeight.w600,
              maxLines: 2,
            ),
            subtitle: RobotoCustomText(
              text: collection,
              fontSize: 12.dp,
              fontWeight: FontWeight.w500,
              textColor: ColorUtility.hexadecimalGrayColor,
            ),
          ),
        ],
      ),
    );
  }
}
