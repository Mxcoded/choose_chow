import 'package:choose_chow/screens/attachments/category_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/search_item_field.dart';
import 'package:choose_chow/screens/attachments/food_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class FoodScreenBody extends StatefulWidget {
  const FoodScreenBody({super.key});

  @override
  State<FoodScreenBody> createState() => _FoodScreenBodyState();
}

class _FoodScreenBodyState extends State<FoodScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RobotoCustomText(
                text: "Categories",
                fontWeight: FontWeight.w600,
                fontSize: 16.dp,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  "/categories_screen",
                ),
                child: RobotoCustomText(
                  text: "See All",
                  fontWeight: FontWeight.w600,
                  fontSize: 12.dp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 1.5.h,
          ),
          const CategoryWidget(),
          SizedBox(
            height: 1.h,
          ),
          const SearchItemField(
              screenToPopUp: "/search_food_screen",
              placeHolderText: "Search Any Food"),
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RobotoCustomText(
                text: "Popular",
                fontWeight: FontWeight.w600,
                fontSize: 16.dp,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(
                    context, "/toogle_food_list_with_chef_screen"),
                child: RobotoCustomText(
                  text: "Toggle With Chef",
                  fontWeight: FontWeight.w600,
                  fontSize: 12.dp,
                ),
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 3.w,
              crossAxisSpacing: 1.3.h,
              childAspectRatio: 4 / 5,
              mainAxisExtent: 40.h,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            itemBuilder: (context, index) => const FoodItemWidget(),
          ),
        ],
      ),
    );
  }
}
