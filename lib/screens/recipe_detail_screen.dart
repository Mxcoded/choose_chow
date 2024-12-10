import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
// import 'package:choose_chow/screens/attachments/cart_item_incremental_decremental_widget.dart';
import 'package:choose_chow/screens/attachments/instruction_ingredient_widget.dart';
import 'package:choose_chow/screens/attachments/rating_graph_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecipeDetailScreen extends StatefulWidget {
  const RecipeDetailScreen({super.key});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  //this will be changed
  // int _numberOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 30.dp,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 4.w,
            ),
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  2.w,
                ),
                border: Border.all(
                  color: ColorUtility.hexadecimalHueColor,
                )),
            child: Icon(
              FontAwesomeIcons.bookmark,
              size: 17.dp,
            ),
          )
        ],
      ),
      // bottomNavigationBar: Container(
      //   decoration: const BoxDecoration(color: Colors.white, boxShadow: [
      //     BoxShadow(
      //         color: ColorUtility.hexadecimalGrey05,
      //         blurRadius: 5.0,
      //         blurStyle: BlurStyle.outer)
      //   ]),
      //   padding: EdgeInsets.symmetric(
      //     vertical: 2.h,
      //     horizontal: 5.w,
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       _numberOfItems != 0
      //           ? Expanded(
      //               flex: 3,
      //               child: Padding(
      //                 padding: EdgeInsets.only(
      //                   right: 4.w,
      //                 ),
      //                 child: const CartItemIncrementalDecrementalWidget(),
      //               ),
      //             )
      //           : Container(
      //               height: 0,
      //             ),
      //       Expanded(
      //         flex: 3,
      //         child: ElevatedButton(
      //             onPressed: _addToCart,
      //             child: RobotoCustomText(
      //               text: "Add to Cart ",
      //               textColor: Colors.white,
      //               fontWeight: FontWeight.w600,
      //               fontSize: 16.dp,
      //             )),
      //       ),
      //     ],
      //   ),
      // ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  AssetImageUtility.foodImage1,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                flex: 5,
                child: Image.asset(
                  AssetImageUtility.backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 17.h,
              left: 4.w,
              right: 4.w,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: ColorUtility.hexadecimalHueColor,
                ),
                borderRadius: BorderRadius.circular(
                  5.w,
                ),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                  horizontal: 3.w,
                ),
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    titleAlignment: ListTileTitleAlignment.top,
                    title: SpaceGroteskCustomText(
                      text: "Prime Pancake with egg yoke sauce",
                      fontSize: 20.dp,
                      fontWeight: FontWeight.w700,
                    ),
                    subtitle: Container(
                      margin: EdgeInsets.only(
                        top: 1.h,
                      ),
                      child: RatingBarIndicator(
                        rating: 3.9,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: ColorUtility.primaryColor,
                        ),
                        itemCount: 5,
                        itemSize: 15.dp,
                        direction: Axis.horizontal,
                      ),
                    ),
                  ),
                  ListTile(
                    minVerticalPadding: 0,
                    // titleAlignment: ListTileTitleAlignment.top,
                    contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      backgroundImage:
                          AssetImage(AssetImageUtility.sampleUserImg),
                    ),
                    title: RobotoCustomText(
                      text: "Benita Queen",
                      fontSize: 14.dp,
                      fontWeight: FontWeight.w700,
                    ),
                    subtitle: RobotoCustomText(
                      text: "2 months ago",
                      fontSize: 14.dp,
                      fontWeight: FontWeight.w400,
                      textColor: ColorUtility.hexadecimalGrey06,
                    ),
                    trailing: ElevatedButton(
                      style:
                          Theme.of(context).elevatedButtonTheme.style?.copyWith(
                                padding: WidgetStatePropertyAll<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                    // vertical: 0.5.h,
                                    horizontal: 5.w,
                                  ),
                                ),
                              ),
                      onPressed: () {},
                      child: const RobotoCustomText(
                        text: "Follow",
                        textColor: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: _rowItem(
                            categoryName: "Total Time", categoryValue: "5 Hrs"),
                      ),
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 2.w,
                          ),
                          child: _rowItem(
                              categoryName: "Servings",
                              categoryValue: "5 plates"),
                        ),
                      ),
                      Flexible(
                        child: _rowItem(
                            categoryName: "Difficulty",
                            categoryValue: "Expert"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const InstructionIngredientWidget(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RobotoCustomText(
                        text: "RATINGS",
                        fontWeight: FontWeight.w600,
                        fontSize: 16.dp,
                      ),
                      const Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.comment,
                            color: ColorUtility.hexadecimalHueColor,
                          ),
                          RobotoCustomText(
                            text: "\t100",
                            textColor: ColorUtility.hexadecimalHueColor,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  RobotoCustomText(
                    text: "3.9/5 Stars",
                    fontWeight: FontWeight.w600,
                    fontSize: 16.dp,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBarIndicator(
                        rating: 0,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: ColorUtility.primaryColor,
                        ),
                        itemCount: 5,
                        itemSize: 25.dp,
                        direction: Axis.horizontal,
                      ),
                      InkWell(
                        onTap: _showRatingDialog,
                        child: RobotoCustomText(
                          text: "Tap here to rate",
                          fontSize: 12.dp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container()
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const RatingGraphWidget(),
                  SizedBox(
                    height: 2.h,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _rowItem(
          {required String categoryName, required String categoryValue}) =>
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorUtility.hexadecimalHueColor,
          ),
          borderRadius: BorderRadius.circular(
            3.w,
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          minLeadingWidth: 0,
          titleAlignment: ListTileTitleAlignment.top,
          title: RobotoCustomText(
            text: categoryName,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          subtitle: RobotoCustomText(
            text: categoryValue,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
        ),
      );

  // void _addToCart() {
  //   _showDialog();
  //   _numberOfItems = 1;
  //   setState(() {});
  // }

  // void _showDialog() => SmartDialog.show(
  //     alignment: Alignment.topCenter,
  //     builder: (context) {
  //       return Container(
  //         margin: EdgeInsets.only(
  //           top: 3.2.h,
  //         ),
  //         height: 6.5.h,
  //         width: 68.w,
  //         decoration: BoxDecoration(
  //           color: ColorUtility.hexadecimalGrey01,
  //           borderRadius: BorderRadius.circular(
  //             2.w,
  //           ),
  //         ),
  //         alignment: Alignment.center,
  //         child: const RobotoCustomText(
  //           text: "Product successfully added to CART",
  //           fontWeight: FontWeight.w700,
  //           textColor: ColorUtility.hexadecimalSLightlyLigtherGreenColor,
  //           textAlign: TextAlign.center,
  //         ),
  //       );
  //     });

  void _showRatingDialog() {
    SmartDialog.show(
      builder: (context) => Container(
        height: 35.h,
        width: 85.w,
        padding: EdgeInsets.symmetric(
          vertical: 2.h,
        ),
        decoration: BoxDecoration(
          color: ColorUtility.hexadecimalGrey01,
          borderRadius: BorderRadius.circular(
            5.w,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RobotoCustomText(
              text: "RATING RECIPE",
              fontSize: 18.dp,
              fontWeight: FontWeight.w700,
            ),
            RobotoCustomText(
              text: "Rate based to let others know how it was!",
              fontSize: 14.dp,
              fontWeight: FontWeight.w500,
            ),
            RatingBar.builder(
              initialRating: 0,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(
                horizontal: 1.5.w,
              ),
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return _ratingIcon();
                  case 1:
                    return _ratingIcon();
                  case 2:
                    return _ratingIcon();
                  case 3:
                    return _ratingIcon();
                  case 4:
                    return _ratingIcon();
                  default:
                    return Container(
                      height: 0,
                    );
                }
              },
              onRatingUpdate: (rating) {
                // print(rating);
              },
            ),
            ElevatedButton(
              onPressed: () {},
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                  )),
              child: RobotoCustomText(
                text: "Submit",
                textColor: Colors.white,
                fontSize: 16.dp,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {
                SmartDialog.dismiss();
              },
              child: RobotoCustomText(
                text: "Cancel",
                fontSize: 16.dp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Icon _ratingIcon({IconData iconData = Icons.star}) => Icon(
        iconData,
        color: ColorUtility.primaryColor,
      );
}
