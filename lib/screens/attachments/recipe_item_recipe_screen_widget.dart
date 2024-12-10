import 'package:choose_chow/models/recipe_item_recipe_screen_widget_vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Utilities/color_utility.dart';
import 'roboto_custom_text.dart';

class RecipeItemRecipewidgetScreen extends StatelessWidget {
  final RecipeItemRecipeScreenWidgetVm recipeItemRecipeScreenWidgetVm;
  const RecipeItemRecipewidgetScreen(
      {required this.recipeItemRecipeScreenWidgetVm, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          4.w,
        ),
        border: Border.all(
          color: ColorUtility.hexadecimalHueColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Expanded>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  4.w,
                ),
              ),
              child: Image.asset(
                recipeItemRecipeScreenWidgetVm.recipeImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.5.w, vertical: 1.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Expanded>[
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    recipeItemRecipeScreenWidgetVm
                                        .userImageUrl),
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Expanded(
                              child: RobotoCustomText(
                                text: recipeItemRecipeScreenWidgetVm.userNames,
                                fontWeight: FontWeight.w400,
                                fontSize: 11.dp,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorUtility.hexadecimalHueColor),
                            borderRadius: BorderRadius.circular(
                              2.w,
                            ),
                          ),
                          padding: EdgeInsets.all(2.w),
                          child: Icon(
                            FontAwesomeIcons.bookmark,
                            size: 15.dp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: RobotoCustomText(
                      text: recipeItemRecipeScreenWidgetVm.recipeName,
                      fontWeight: FontWeight.w500,
                      fontSize: 11.dp,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
