import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/category_widget.dart';
import 'package:choose_chow/screens/attachments/recipe_item_widget.dart';
import 'package:choose_chow/screens/attachments/search_item_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w,
      ),
      child: ListView(
        children: <Widget>[
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          text: "Find what your cooking,",
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 24.dp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " today",
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 24.dp,
                                color: ColorUtility.primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Expanded(flex: 1, child: Container())
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              const SearchItemField(
                screenToPopUp: "/search_screen",
                placeHolderText: "Search Any Recipe",
              ),
              SizedBox(
                height: 2.h,
              ),
              const CategoryWidget(),
              SizedBox(
                height: 1.h,
              ),
            ] +
            [
              const RecipeItemWidget(
                averageRating: 3.9,
                collection: "Asian",
                imageUrl: AssetImageUtility.foodImage1,
                recipeName: "Prime Pancake with egg yoke sauce",
              ),
              const RecipeItemWidget(
                averageRating: 3.8,
                collection: "Asian",
                imageUrl: AssetImageUtility.foodImage2,
                recipeName: "Prime Pancake with egg yoke sauce",
              ),
              const RecipeItemWidget(
                averageRating: 3.9,
                collection: "Asian",
                imageUrl: AssetImageUtility.foodImage1,
                recipeName: "Prime Pancake with egg yoke sauce",
              ),
            ],
      ),
    );
  }
}
