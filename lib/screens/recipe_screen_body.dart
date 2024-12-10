import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/models/recipe_item_recipe_screen_widget_vm.dart';
import 'package:choose_chow/screens/attachments/recipe_item_recipe_screen_widget.dart';
import 'package:choose_chow/screens/attachments/search_item_field.dart';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class RecipeScreenBody extends StatefulWidget {
  const RecipeScreenBody({super.key});

  @override
  State<RecipeScreenBody> createState() => _RecipeScreenBodyState();
}

class _RecipeScreenBodyState extends State<RecipeScreenBody> {
  final List<RecipeItemRecipeScreenWidgetVm> _recipes = List.filled(
    20,
    RecipeItemRecipeScreenWidgetVm(
        recipeName: "Steamed Rice with Smoked Cherry Tomatoes",
        recipeImageUrl: AssetImageUtility.foodImage1,
        userImageUrl: AssetImageUtility.sampleUserImg,
        userNames: "Benita Queen"),
  );
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
          const SearchItemField(
              screenToPopUp: "/search_screen",
              placeHolderText: "Search Any Recipe"),
          SizedBox(
            height: 2.h,
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 3.w,
              crossAxisSpacing: 1.3.h,
              childAspectRatio: 4 / 5,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _recipes.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () =>
                  Navigator.pushNamed(context, "/recipe_detail_screen"),
              child: RecipeItemRecipewidgetScreen(
                recipeItemRecipeScreenWidgetVm: _recipes[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
