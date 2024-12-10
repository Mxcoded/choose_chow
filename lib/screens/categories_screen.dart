import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:choose_chow/screens/global_horizontal_padding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../models/category.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Category> _dummyCategories = List.filled(
    10,
    Category(
        id: 1, labelName: "Cuisine", image: AssetImageUtility.collectionImage4),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: SpaceGroteskCustomText(
          text: "Categories",
          fontSize: 24.dp,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: BackgroundImageWidget(
        child: GloabalHorizontalPaddingWidget(
          child: Container(
            margin: EdgeInsets.only(
              top: 5.h,
            ),
            child: GridView.builder(
              itemCount: _dummyCategories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2.h,
                crossAxisSpacing: 5.w,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      4.w,
                    ),
                    border: Border.all(color: ColorUtility.hexadecimalHueColor),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          4.w,
                        ),
                        child: Image.asset(
                          _dummyCategories[index].image,
                          fit: BoxFit.contain,
                          height: 10.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 1.h,
                        ),
                        alignment: Alignment.topCenter,
                        child: RobotoCustomText(
                          text: _dummyCategories[index].labelName,
                          fontSize: 13.dp,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
