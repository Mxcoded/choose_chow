import 'package:choose_chow/Utilities/asset_image_utility.dart';
import 'package:choose_chow/Utilities/color_utility.dart';
import 'package:choose_chow/screens/attachments/food_item_widget.dart';
import 'package:choose_chow/screens/attachments/roboto_custom_text.dart';
import 'package:choose_chow/screens/attachments/space_grotesk_custom_text.dart';
import 'package:choose_chow/screens/background_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChefDetailScreen extends StatefulWidget {
  const ChefDetailScreen({super.key});

  @override
  State<ChefDetailScreen> createState() => _ChefDetailScreenState();
}

class _ChefDetailScreenState extends State<ChefDetailScreen> {
  final List<int> _justRandomList = List.generate(
    10,
    (index) => index,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leadingWidth: 10.w,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(
            context,
          ),
          child: Container(
            margin: EdgeInsets.only(
              left: 1.w,
            ),
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorUtility.primaryColor,
            ),
            child: Icon(
              Icons.navigate_before,
              size: 30.dp,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(
                right: 2.w,
              ),
              padding: EdgeInsets.all(
                1.5.w,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(FontAwesomeIcons.heart),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.search,
        ),
      ),
      body: BackgroundImageWidget(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(
                    bottom: 4.h,
                    right: 5.w,
                    left: 5.w,
                  ),
                  height: 35.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        AssetImageUtility.foodImage1,
                      ),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.h,
                      horizontal: 5.w,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        3.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 10.w,
                          backgroundImage: const AssetImage(
                            AssetImageUtility.sampleUserImg,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 2.w,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SpaceGroteskCustomText(
                                text: "Chef Ndubisi",
                                fontWeight: FontWeight.w700,
                                fontSize: 16.dp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: ColorUtility.primaryColor,
                                    size: 14.dp,
                                  ),
                                  RobotoCustomText(
                                    fontWeight: FontWeight.w500,
                                    text: "\t5",
                                    fontSize: 15.dp,
                                  ),
                                ],
                              ),
                              RobotoCustomText(
                                text: "23k orders processed",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.dp,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ] +
              _justRandomList
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 1.h,
                        horizontal: 5.w,
                      ),
                      child: const FoodItemWidget(
                        axisHonrizontal: true,
                      ),
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
