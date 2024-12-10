import 'package:choose_chow/screens/attachments/custom_navigation_bar.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/recipe_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'background_image_widget.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({super.key});

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        surfaceTintColor: Colors.white,
        // forceMaterialTransparency: true,
        toolbarHeight: 10.h,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leadingWidth: null,
        title: RobotoCustomText(
          text: "Recipes",
          fontSize: 24.dp,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: const BackgroundImageWidget(
        child: RecipeScreenBody(),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
