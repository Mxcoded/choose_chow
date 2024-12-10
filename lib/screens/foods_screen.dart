import 'package:choose_chow/screens/attachments/custom_navigation_bar.dart';
import 'package:choose_chow/screens/food_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import '../Utilities/asset_image_utility.dart';
import 'background_image_widget.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen>
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
        title: Image.asset(
          AssetImageUtility.logoHorizontal,
          fit: BoxFit.fitHeight,
          height: 5.h,
        ),
      ),
      body: const BackgroundImageWidget(
        child: FoodScreenBody(),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
