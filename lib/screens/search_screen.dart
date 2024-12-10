import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'background_image_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      body: BackgroundImageWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 1.5.h,
              ),
              TextFormField(
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: "Search any recipe...",
                  hintStyle: GoogleFonts.roboto(),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  border: const OutlineInputBorder(),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorUtility.hexadecimalGrey03,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorUtility.hexadecimalGrey03,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorUtility.primaryColor,
                      width: 0.2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              _sectionHeading(text: "Search History"),
              SizedBox(
                height: 2.5.h,
              ),
              _searchHistoryItem(text: "Apple Pancake with caramel sauce"),
              SizedBox(
                height: 2.h,
              ),
              _searchHistoryItem(
                  text: "Dragon Soup with Firecracker Dumplings"),
              SizedBox(
                height: 2.h,
              ),
              _searchHistoryItem(text: "Moon Cheese with Star Crackers"),
              SizedBox(
                height: 2.5.h,
              ),
              _sectionHeading(text: "Meals"),
              SizedBox(
                height: 2.h,
              ),
              GroupButton<String>(
                isRadio: false,
                enableDeselect: true,
                onSelected: (value, index, isSelected) =>
                    debugPrint('$index button is selected'),
                buttons: const [
                  "Breakfast",
                  "Dinner",
                  "Dessert",
                  "Brunch",
                  "Lunch",
                ],
                options: GroupButtonOptions(
                  buttonHeight: 5.h,
                  borderRadius: BorderRadius.circular(
                    7.w,
                  ),
                  mainGroupAlignment: MainGroupAlignment.start,
                  textPadding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  unselectedColor: Colors.transparent,
                  unselectedBorderColor: ColorUtility.hexadecimalHueColor,
                  unselectedTextStyle: GoogleFonts.roboto(
                    color: ColorUtility.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.dp,
                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              _sectionHeading(text: "Difficulty"),
              SizedBox(
                height: 2.h,
              ),
              GroupButton<String>(
                isRadio: false,
                enableDeselect: true,
                onSelected: (value, index, isSelected) =>
                    debugPrint('$index button is selected'),
                buttons: const [
                  "Beginner",
                  "Intermediary",
                  "Expert",
                ],
                options: GroupButtonOptions(
                  buttonHeight: 5.h,
                  borderRadius: BorderRadius.circular(
                    7.w,
                  ),
                  mainGroupAlignment: MainGroupAlignment.start,
                  textPadding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  unselectedColor: Colors.transparent,
                  unselectedBorderColor: ColorUtility.hexadecimalHueColor,
                  unselectedTextStyle: GoogleFonts.roboto(
                    color: ColorUtility.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.dp,
                  ),
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              _sectionHeading(text: "Diet"),
              SizedBox(
                height: 2.h,
              ),
              GroupButton<String>(
                isRadio: false,
                enableDeselect: true,
                onSelected: (value, index, isSelected) =>
                    debugPrint('$index button is selected'),
                buttons: const [
                  "Vegetarian",
                  "Pescetarian",
                  "Vegan",
                  "Paleo",
                  "Gluten-free",
                  "Dairy-free",
                  "Keto",
                  "Raw Food",
                ],
                options: GroupButtonOptions(
                  buttonHeight: 5.h,
                  borderRadius: BorderRadius.circular(
                    7.w,
                  ),
                  mainGroupAlignment: MainGroupAlignment.start,
                  textPadding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  unselectedColor: Colors.transparent,
                  unselectedBorderColor: ColorUtility.hexadecimalHueColor,
                  unselectedTextStyle: GoogleFonts.roboto(
                    color: ColorUtility.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.dp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _searchHistoryItem({required String text}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RobotoCustomText(
            text: text,
            textColor: ColorUtility.hexadecimalGrey06,
            fontSize: 14.dp,
            fontWeight: FontWeight.w400,
          ),
          const RotatedBox(
            quarterTurns: 3,
            child: Icon(
              Icons.arrow_outward,
            ),
          )
        ],
      );

  RobotoCustomText _sectionHeading({required String text}) => RobotoCustomText(
        text: text,
        fontSize: 16.dp,
        fontWeight: FontWeight.w500,
        textColor: ColorUtility.hexadecimalGrayColor,
      );
}
