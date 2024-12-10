import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/Utilities/custom_extensions.dart';
import 'package:choose_chow/Utilities/reusable_codes.dart';
import 'package:choose_chow/screens/attachments/cart_item_incremental_decremental_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({super.key});

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  //this will be changed
  int _numberOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: generateAppBarWithPopContext(
        context: context,
        title: const SpaceGroteskCustomText(
          text: "Food",
          fontWeight: FontWeight.w700,
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: ColorUtility.hexadecimalGrey05,
              blurRadius: 5.0,
              blurStyle: BlurStyle.outer)
        ]),
        padding: EdgeInsets.symmetric(
          vertical: 2.h,
          horizontal: 5.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _numberOfItems != 0
                ? Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 4.w,
                      ),
                      child: const CartItemIncrementalDecrementalWidget(),
                    ),
                  )
                : Container(
                    height: 0,
                  ),
            Expanded(
              flex: 3,
              child: ElevatedButton(
                  onPressed: _addToCart,
                  child: RobotoCustomText(
                    text: "Add to Cart ",
                    textColor: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.dp,
                  )),
            ),
          ],
        ),
      ),
      body: BackgroundImageWidget(
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
            horizontal: 3.w,
          ),
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(
                4.w,
              ),
              child: Image.asset(
                fit: BoxFit.fill,
                height: 25.h,
                width: 100.w,
                AssetImageUtility.foodImage2,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              titleAlignment: ListTileTitleAlignment.top,
              title: SpaceGroteskCustomText(
                text: "Prime Pancake with egg yoke sauce",
                fontSize: 20.dp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SpaceGroteskCustomText(
              text: "10,000".appendNairaSymbol(),
              fontWeight: FontWeight.w500,
              fontSize: 24.dp,
              textColor: ColorUtility.primaryColor,
            ),
            Container(
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
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: _rowItem(
                      iconData: Icons.local_shipping, textValue: "Free"),
                ),
                Flexible(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 2.w,
                    ),
                    child: _rowItem(textValue: "20 mins"),
                  ),
                ),
                Flexible(
                  child: _rowItem(iconData: Icons.star, textValue: "4.9"),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            ListTile(
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.zero,
              title: RobotoCustomText(
                text: "Description",
                fontSize: 16.dp,
                fontWeight: FontWeight.w700,
              ),
              subtitle: RobotoCustomText(
                text:
                    "Prime Pancake with egg yolk sauce is a sweet and rich pancake with a buttery sauce. It is a high-calorie treat for breakfast or dessert. Some people add fruits, nuts, or chocolate to the pancake. This dish is not realistic or healthy, but it is fun and imaginative.",
                fontWeight: FontWeight.w400,
                fontSize: 14.dp,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            RobotoCustomText(
              text: "INGREDIENTS",
              textColor: ColorUtility.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 16.dp,
            ),
            SizedBox(
              height: 1.h,
            ),
            Wrap(
              spacing: 8.w,
              runSpacing: 1.5.h,
              children: ["Eggs", "Freshly ground black pepper", "Water"]
                  .map(
                    (e) => Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 1.5.h,
                        horizontal: 5.w,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorUtility.primaryColor.withOpacity(.8),
                        ),
                        borderRadius: BorderRadius.circular(
                          2.w,
                        ),
                      ),
                      child: RobotoCustomText(
                        text: e,
                        textColor: ColorUtility.primaryColor.withOpacity(
                          .8,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 2.h,
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
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }

  Widget _rowItem({IconData? iconData, required String textValue}) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorUtility.hexadecimalHueColor,
          ),
          borderRadius: BorderRadius.circular(
            3.w,
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 1.h,
          horizontal: 2.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData != null
                ? Icon(
                    iconData,
                    color: ColorUtility.primaryColor.withOpacity(
                      .8,
                    ),
                  )
                : Container(),
            Container(
              margin: iconData != null
                  ? EdgeInsets.only(
                      left: 2.w,
                    )
                  : null,
              child: RobotoCustomText(
                text: textValue,
                textAlign: TextAlign.justify,
                textColor: ColorUtility.primaryColor.withOpacity(.8),
              ),
            )
          ],
        ),
      );

  void _addToCart() {
    _showDialog();
    _numberOfItems = 1;
    setState(() {});
  }

  void _showDialog() => SmartDialog.show(
      alignment: Alignment.topCenter,
      builder: (context) {
        return Container(
          margin: EdgeInsets.only(
            top: 3.2.h,
          ),
          height: 6.5.h,
          width: 68.w,
          decoration: BoxDecoration(
            color: ColorUtility.hexadecimalGrey01,
            borderRadius: BorderRadius.circular(
              2.w,
            ),
          ),
          alignment: Alignment.center,
          child: const RobotoCustomText(
            text: "Product successfully added to CART",
            fontWeight: FontWeight.w700,
            textColor: ColorUtility.hexadecimalSLightlyLigtherGreenColor,
            textAlign: TextAlign.center,
          ),
        );
      });

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
              text: "RATE FOOD",
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
